require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class ApiEndpoints
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::DeleteApiEndpointRequest).returns(Utils::FieldAugmented) }
        def delete_api_endpoint(request)
            # Delete an ApiEndpoint.
        # Delete an ApiEndpoint. This will also delete all associated Request Logs (if using a Postgres datastore).
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}', request.path_params)
            
            
            r = @client.delete(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::DeleteApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::FindApiEndpointRequest).returns(Utils::FieldAugmented) }
        def find_api_endpoint(request)
            # Find an ApiEndpoint via its displayName.
        # Find an ApiEndpoint via its displayName (set by operationId from a registered OpenAPI schema).
        # This is useful for finding the ID of an ApiEndpoint to use in the /v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID} endpoints.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/find/{displayName}', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::FindApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::ApiEndpoint.unmarshal_json(r.env.response_body)
                    res.api_endpoint = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GenerateOpenApiSpecForApiEndpointRequest).returns(Utils::FieldAugmented) }
        def generate_open_api_spec_for_api_endpoint(request)
            # Generate an OpenAPI specification for a particular ApiEndpoint.
        # This endpoint will generate a new operation in any registered OpenAPI document if the operation does not already exist in the document.
        # Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/openapi', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GenerateOpenApiSpecForApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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
        
        sig { params(request: Operations::GeneratePostmanCollectionForApiEndpointRequest).returns(Utils::FieldAugmented) }
        def generate_postman_collection_for_api_endpoint(request)
            # Generate a Postman collection for a particular ApiEndpoint.
        # Generates a postman collection that allows the endpoint to be called from postman variables produced for any path/query/header parameters included in the OpenAPI document.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/postman', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GeneratePostmanCollectionForApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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
        
        sig { params(request: Operations::GetAllApiEndpointsRequest).returns(Utils::FieldAugmented) }
        def get_all_api_endpoints(request)
            # Get all Api endpoints for a particular apiID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/api_endpoints', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetAllApiEndpointsResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::ApiEndpoint].unmarshal_json(r.env.response_body)
                    res.api_endpoints = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetAllForVersionApiEndpointsRequest).returns(Utils::FieldAugmented) }
        def get_all_for_version_api_endpoints(request)
            # Get all ApiEndpoints for a particular apiID and versionID.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetAllForVersionApiEndpointsResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = T::Array[Shared::ApiEndpoint].unmarshal_json(r.env.response_body)
                    res.api_endpoints = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::GetApiEndpointRequest).returns(Utils::FieldAugmented) }
        def get_api_endpoint(request)
            # Get an ApiEndpoint.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::ApiEndpoint.unmarshal_json(r.env.response_body)
                    res.api_endpoint = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::UpsertApiEndpointRequest).returns(Utils::FieldAugmented) }
        def upsert_api_endpoint(request)
            # Upsert an ApiEndpoint.
        # Upsert an ApiEndpoint. If the ApiEndpoint does not exist it will be created, otherwise it will be updated.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}', request.path_params)
            
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

            res = Operations::UpsertApiEndpointResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::ApiEndpoint.unmarshal_json(r.env.response_body)
                    res.api_endpoint = out
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