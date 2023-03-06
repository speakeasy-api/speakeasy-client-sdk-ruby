require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Apis
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::DeleteApiRequest).returns(Utils::FieldAugmented) }
        def delete_api(request)
            # Delete an Api.
        # Delete a particular version of an Api. The will also delete all associated ApiEndpoints, Metadata, Schemas & Request Logs (if using a Postgres datastore).
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}', request.path_params)
            
            
            r = @client.delete(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DeleteApiResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GenerateOpenApiSpecRequest).returns(Utils::FieldAugmented) }
        def generate_open_api_spec(request)
            # Generate an OpenAPI specification for a particular Api.
        # This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
        # Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/generate/openapi', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GenerateOpenApiSpecResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::GenerateOpenApiSpecDiff.unmarshal_json(r.env.response_body)
                    res.generate_open_api_spec_diff = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GeneratePostmanCollectionRequest).returns(Utils::FieldAugmented) }
        def generate_postman_collection(request)
            # Generate a Postman collection for a particular Api.
        # Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/generate/postman', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GeneratePostmanCollectionResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/octet-stream")
                    res.postman_collection = r.env.response_body
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetAllApiVersionsRequest).returns(Utils::FieldAugmented) }
        def get_all_api_versions(request)
            # Get all Api versions for a particular ApiEndpoint.
        # Get all Api versions for a particular ApiEndpoint.
        # Supports filtering the versions based on metadata attributes.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}', request.path_params)
            
            query_params = Utils::get_query_params(request.query_params)
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                req.params = query_params
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetAllApiVersionsResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::Api].unmarshal_json(r.env.response_body)
                    res.apis = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetApisRequest).returns(Utils::FieldAugmented) }
        def get_apis(request)
            # Get a list of Apis for a given workspace
        # Get a list of all Apis and their versions for a given workspace.
        # Supports filtering the APIs based on metadata attributes.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/apis'
            
            query_params = Utils::get_query_params(request.query_params)
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                req.params = query_params
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetApisResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::Api].unmarshal_json(r.env.response_body)
                    res.apis = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::UpsertApiRequest).returns(Utils::FieldAugmented) }
        def upsert_api(request)
            # Upsert an Api
        # Upsert an Api. If the Api does not exist, it will be created.
        # If the Api exists, it will be updated.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}', request.path_params)
            
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

            res = Operations::UpsertApiResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Api.unmarshal_json(r.env.response_body)
                    res.api = out
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