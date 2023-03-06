require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Schemas
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::DeleteSchemaRequest).returns(Utils::FieldAugmented) }
        def delete_schema(request)
            # Delete a particular schema revision for an Api.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}', request.path_params)
            
            
            r = @client.delete(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DeleteSchemaResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::DownloadSchemaRequest).returns(Utils::FieldAugmented) }
        def download_schema(request)
            # Download the latest schema for a particular apiID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema/download', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DownloadSchemaResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = String.unmarshal_json(r.env.response_body)
                    res.schema = out
                end
                if Utils::match_content_type(content_type, "application/x-yaml")
                    res.schema = r.env.response_body
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::DownloadSchemaRevisionRequest).returns(Utils::FieldAugmented) }
        def download_schema_revision(request)
            # Download a particular schema revision for an Api.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}/download', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DownloadSchemaRevisionResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = String.unmarshal_json(r.env.response_body)
                    res.schema = out
                end
                if Utils::match_content_type(content_type, "application/x-yaml")
                    res.schema = r.env.response_body
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetSchemaRequest).returns(Utils::FieldAugmented) }
        def get_schema(request)
            # Get information about the latest schema.
        # Returns information about the last uploaded schema for a particular API version. 
        # This won't include the schema itself, that can be retrieved via the downloadSchema operation.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetSchemaResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Schema.unmarshal_json(r.env.response_body)
                    res.schema = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetSchemaDiffRequest).returns(Utils::FieldAugmented) }
        def get_schema_diff(request)
            # Get a diff of two schema revisions for an Api.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema/{baseRevisionID}/diff/{targetRevisionID}', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetSchemaDiffResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::SchemaDiff.unmarshal_json(r.env.response_body)
                    res.schema_diff = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetSchemaRevisionRequest).returns(Utils::FieldAugmented) }
        def get_schema_revision(request)
            # Get information about a particular schema revision for an Api.
        # Returns information about the last uploaded schema for a particular schema revision. 
        # This won't include the schema itself, that can be retrieved via the downloadSchema operation.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetSchemaRevisionResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Schema.unmarshal_json(r.env.response_body)
                    res.schema = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetSchemasRequest).returns(Utils::FieldAugmented) }
        def get_schemas(request)
            # Get information about all schemas associated with a particular apiID.
        # Returns information the schemas associated with a particular apiID. 
        # This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schemas', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetSchemasResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::Schema].unmarshal_json(r.env.response_body)
                    res.schemata = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::RegisterSchemaRequest).returns(Utils::FieldAugmented) }
        def register_schema(request)
            # Register a schema.
        # Allows uploading a schema for a particular API version.
        # This will be used to populate ApiEndpoints and used as a base for any schema generation if present.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/schema', request.path_params)
            
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

            res = Operations::RegisterSchemaResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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