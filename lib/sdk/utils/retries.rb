# typed: true

require 'sorbet-runtime'

extend T::Sig


module OpenApiSDK

    class BackoffStrategy
        extend T::Sig

        attr_accessor :initial_interval, :max_interval, :exponent, :max_elapsed_time

        sig {params(initial_interval: Integer, max_interval: Integer, exponent: Float, max_elapsed_time: Integer).void}
        def initialize(initial_interval, max_interval, exponent, max_elapsed_time)
            @initial_interval = initial_interval
            @max_interval = max_interval
            @exponent = exponent
            @max_elapsed_time = max_elapsed_time
        end
    end

    class RetryConfig
        extend T::Sig

        attr_accessor :strategy, :backoff, :retry_connection_errors

        sig {params(strategy: String, retry_connection_errors: bool).void}
        def initialize(strategy, retry_connection_errors)
            @strategy = strategy
            @retry_connection_errors = retry_connection_errors
        end
    end

    class RetriesContainer
        extend T::Sig

        attr_accessor :config, :status_codes

        sig {params(config: RetryConfig, status_codes: Array[String]).void}
        def initialize(config, status_codes)
            @config = config
            @status_codes = status_codes
        end
    end

    class TemporaryError < StandardError
        extend T::Sig

        attr_accessor :response

        sig {params(response: requests.Response).void}
        def initialize(response)
            @response = response
        end
    end

    class PermanentError < StandardError
        extend T::Sig

        attr_accessor :inner

        sig {params(inner: StandardError).void}
        def initialize(inner)
            @inner = inner
        end
    end

    def self.retry(fn, retries)
        if retries.config.strategy == 'backoff'
            do_request = lambda do
                begin
                    res = fn.call()
                    for code in retries.status_codes
                        if code.upcase.include? "X"
                            code_range = code[0].to_i
                            s = res.status_code / 100
                            if s >= code_range and s < code_range + 1
                                raise TemporaryError.new(res)
                            end
                        else
                            parsed_code = code.to_i
                            if res.status_code == parsed_code
                                raise TemporaryError.new(res)
                            end
                        end
                    end
                rescue Faraday::ConnectionFailed => e
                    if !retries.config.config.retry_connection_errors
                        raise
                    else
                        raise PermanentError.new(e)
                    end
                rescue Faraday::TimeoutError => e
                    if !retries.config.config.retry_connection_errors
                        raise
                    else
                        raise PermanentError.new(e)
                    end
                rescue TemporaryError
                    raise
                rescue StandardError => e
                    raise PermanentError.new(e)
                end
               return res
            end
           retry_with_backoff(do_request, retries.config.backoff.initial_interval, retries.config.backoff.max_interval, retries.config.backoff.exponent, retries.config.backoff.max_elapsed_time)
        else
            fn.call()
        end
    end

    def self.retry_with_backoff(fn, initial_interval=500, max_interval=60000, exponent=1.5, max_elapsed_time=3600000)
        start = round(time.time()*1000)
        x = 0
        while true
            begin
                return fn.call()
            rescue PermanentError => e
                raise e.inner
            rescue StandardError => e
                now = round(time.time()*1000)
                if now - start > max_elapsed_time
                    if isinstance(e, TemporaryError)
                        return e.response
                    else
                        raise
                    end
                end
                sleep = ((initial_interval/1000) * exponent**x + rand)
                if sleep > max_interval/1000
                    sleep = max_interval/1000
                end
                sleep(sleep)
                x += 1
            end
        end
    end
end