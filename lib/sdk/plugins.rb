require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Plugins
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { returns(Utils::FieldAugmented) }
        def get_plugins()
            # Get all plugins for the current workspace.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/plugins'
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetPluginsResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::Plugin].unmarshal_json(r.env.response_body)
                    res.plugins = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::RunPluginRequest).returns(Utils::FieldAugmented) }
        def run_plugin(request)
            # Run a plugin
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/plugins/{pluginID}', request.path_params)
            
            query_params = Utils::get_query_params(request.query_params)
            
            r = @client.post(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                req.params = query_params
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::RunPluginResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::BoundedRequest].unmarshal_json(r.env.response_body)
                    res.bounded_requests = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::UpsertPluginRequest).returns(Utils::FieldAugmented) }
        def upsert_plugin(request)
            # Upsert a plugin
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/plugins'
            
            headers = {}
            req_content_type, data, form = Utils::serialize_request_body(request)
            headers["content-type"] = req_content_type
            if data.nil? && form.nil?
                raise StandardError.new ('request body is required')
            end
            
            r = @client.put(url) do |req|
                req.headers = headers
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
                if form
                    req.body = Utils::encode_form(form)
                elsif Utils::match_content_type(req_content_type, "application/x-www-form-urlencoded")
                    req.body = URI.encode_www_form(data)
                elsif Utils::match_content_type(req_content_type, "application/json")
                    req.body = data
                else
                    req.body = data
                end
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::UpsertPluginResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Plugin.unmarshal_json(r.env.response_body)
                    res.plugin = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
    end
end