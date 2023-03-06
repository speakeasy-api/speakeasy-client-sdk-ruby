require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Embeds
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::GetEmbedAccessTokenRequest).returns(Utils::FieldAugmented) }
        def get_embed_access_token(request)
            # Get an embed access token for the current workspace.
        # Returns an embed access token for the current workspace. This can be used to authenticate access to externally embedded content.
        # Filters can be applied allowing views to be filtered to things like particular customerIds.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/workspace/embed-access-token'
            
            query_params = Utils::get_query_params(request.query_params)
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                req.params = query_params
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetEmbedAccessTokenResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::EmbedAccessTokenResponse.unmarshal_json(r.env.response_body)
                    res.embed_access_token_response = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { returns(Utils::FieldAugmented) }
        def get_valid_embed_access_tokens()
            # Get all valid embed access tokens for the current workspace.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/workspace/embed-access-tokens/valid'
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetValidEmbedAccessTokensResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::EmbedToken].unmarshal_json(r.env.response_body)
                    res.embed_tokens = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::RevokeEmbedAccessTokenRequest).returns(Utils::FieldAugmented) }
        def revoke_embed_access_token(request)
            # Revoke an embed access EmbedToken.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/workspace/embed-access-tokens/{tokenID}', request.path_params)
            
            
            r = @client.delete(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::RevokeEmbedAccessTokenResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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