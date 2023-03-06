require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
    extend T::Sig
    class Requests
        extend T::Sig
        sig{ params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void}
        def initialize(sdk, client, server_url, sdk_version, gen_version)
            @sdk = sdk
            @client = client
            @server_url = server_url
            @sdk_version = sdk_version
            @gen_version = gen_version
        end

        
        sig { params(request: Operations::GenerateRequestPostmanCollectionRequest).returns(Utils::FieldAugmented) }
        def generate_request_postman_collection(request)
            # Generate a Postman collection for a particular request.
        # Generates a Postman collection for a particular request. 
        # Allowing it to be replayed with the same inputs that were captured by the SDK.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/eventlog/{requestID}/generate/postman', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GenerateRequestPostmanCollectionResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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
        
        sig { params(request: Operations::GetRequestFromEventLogRequest).returns(Utils::FieldAugmented) }
        def get_request_from_event_log(request)
            # Get information about a particular request.
            
            base_url = @server_url
            
            url = Utils::generate_url(base_url, '/v1/eventlog/{requestID}', request.path_params)
            
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::GetRequestFromEventLogResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
            if r.status == 200
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::UnboundedRequest.unmarshal_json(r.env.response_body)
                    res.unbounded_request = out
                end
            else
                if Utils::match_content_type(content_type, "application/json")
                    out = Shared::Error.unmarshal_json(r.env.response_body)
                    res.error = out
                end
            end

            return res
        end
        
        sig { params(request: Operations::QueryEventLogRequest).returns(Utils::FieldAugmented) }
        def query_event_log(request)
            # Query the event log to retrieve a list of requests.
        # Supports retrieving a list of request captured by the SDK for this workspace.
        # Allows the filtering of requests on a number of criteria such as ApiID, VersionID, Path, Method, etc.
            
            base_url = @server_url
            
            url = base_url.delete_suffix('/') + '/v1/eventlog/query'
            
            query_params = Utils::get_query_params(request.query_params)
            
            r = @client.get(url) do |req|
                
                
                if !@sdk.nil? && !@sdk.security.nil?
                  Utils::configure_request_security(req, @sdk.security)
                end

                
                req.params = query_params
                
            end
            content_type = r.headers["Content-Type"] || "application/text"

            res = Operations::QueryEventLogResponse.new(status_code: r.status, content_type: content_type, raw_response: r)
            
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
        
    end
end