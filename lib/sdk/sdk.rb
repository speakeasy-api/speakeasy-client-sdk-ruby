require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'


# SDK Documentation:
# The Speakeasy API allows teams to manage common operations with their APIs
# https://docs.speakeasyapi.dev - The Speakeasy Platform Documentation
module OpenApiSDK
    extend T::Sig

    
    SERVER_PROD = "prod"
    SERVERS = {
        SERVER_PROD: "https://api.prod.speakeasyapi.dev",
    }



    class SDK
        extend T::Sig

        attr_accessor :api_endpoints, :apis, :embeds, :metadata, :plugins, :requests, :schemas
        attr_accessor :security, :sdk_version, :gen_version
        def initialize
            @client = Faraday.new(request: { 
                params_encoder: Faraday::FlatParamsEncoder
             }) do |f|
                f.request :multipart, {}
                # f.response :logger
             end

            @security = nil
            @server_url = SERVERS[SERVER_PROD]
            @sdk_version = "0.0.1"
            @gen_version = "internal"

            self.init_sdks()
        end

        sig{ params(server_url: String, params: T.nilable(T::Hash[Symbol, String])).void }
        def config_server_url(server_url, params)
            if params.nil?
                @server_url = server_url
            else
                @server_url = Utils::replace_parameters(server_url, params)
            end
            self.init_sdks()
        end

        
        sig {params(server: String, params: T.nilable(T::Hash[Symbol, String])).void }
        def config_server(server, params)
            if ! SERVERS.include? server 
                raise StandardError.new ("Invalid server")
            end
            self.config_server_url(SERVERS[server], params)
            self.init_sdks()
        end
        

        
        sig{ params(security: Shared::Security).void}
        def config_security(security)
            @security = security
        end
        

        
        def init_sdks()
            
            @api_endpoints = ApiEndpoints.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @apis = Apis.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @embeds = Embeds.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @metadata = Metadata.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @plugins = Plugins.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @requests = Requests.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
            
            @schemas = Schemas.new(
              self,
              @client,
              @server_url,
              @sdk_version,
              @gen_version
            )
        end
        

        sig { returns(Utils::FieldAugmented) }
        def validate_api_key()
            # Validate the current api key.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/auth/validate'
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::ValidateApiKeyResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
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