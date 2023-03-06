require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Metadata
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::DeleteVersionMetadataRequest).returns(Utils::FieldAugmented) }
        def delete_version_metadata(request)
            # Delete metadata for a particular apiID and versionID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/metadata/{metaKey}/{metaValue}', request.path_params)
            
            
            r = @client.delete(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DeleteVersionMetadataResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetVersionMetadataRequest).returns(Utils::FieldAugmented) }
        def get_version_metadata(request)
            # Get all metadata for a particular apiID and versionID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/metadata', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetVersionMetadataResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::VersionMetadata].unmarshal_json(r.env.response_body)
                    res.version_metadata = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::InsertVersionMetadataRequest).returns(Utils::FieldAugmented) }
        def insert_version_metadata(request)
            # Insert metadata for a particular apiID and versionID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/metadata', request.path_params)
            
            headers = {}
            req_content_type, data, form = Utils::serialize_request_body(request)
            headers["content-type"] = req_content_type
            if data.nil? && form.nil?
                raise StandardError.new ('request body is required')
            end
            
            r = @client.post(url) do |req|
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

            res = Operations::InsertVersionMetadataResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::VersionMetadata.unmarshal_json(r.env.response_body)
                    res.version_metadata = out
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