# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class ApiEndpoints
    # REST APIs for managing ApiEndpoint entities
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(request: T.nilable(Operations::DeleteApiEndpointRequest)).returns(Utils::FieldAugmented) }
    def delete_api_endpoint(request)
      # delete_api_endpoint - Delete an ApiEndpoint.
      # Delete an ApiEndpoint. This will also delete all associated Request Logs (if using a Postgres datastore).
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::DeleteApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeleteApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::FindApiEndpointRequest)).returns(Utils::FieldAugmented) }
    def find_api_endpoint(request)
      # find_api_endpoint - Find an ApiEndpoint via its displayName.
      # Find an ApiEndpoint via its displayName (set by operationId from a registered OpenAPI schema).
      # This is useful for finding the ID of an ApiEndpoint to use in the /v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID} endpoints.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::FindApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/find/{displayName}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FindApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ApiEndpoint)
          res.api_endpoint = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GenerateOpenApiSpecForApiEndpointRequest)).returns(Utils::FieldAugmented) }
    def generate_open_api_spec_for_api_endpoint(request)
      # generate_open_api_spec_for_api_endpoint - Generate an OpenAPI specification for a particular ApiEndpoint.
      # This endpoint will generate a new operation in any registered OpenAPI document if the operation does not already exist in the document.
      # Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GenerateOpenApiSpecForApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/openapi',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GenerateOpenApiSpecForApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GenerateOpenApiSpecDiff)
          res.generate_open_api_spec_diff = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GeneratePostmanCollectionForApiEndpointRequest)).returns(Utils::FieldAugmented) }
    def generate_postman_collection_for_api_endpoint(request)
      # generate_postman_collection_for_api_endpoint - Generate a Postman collection for a particular ApiEndpoint.
      # Generates a postman collection that allows the endpoint to be called from postman variables produced for any path/query/header parameters included in the OpenAPI document.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GeneratePostmanCollectionForApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/postman',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/octet-stream;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GeneratePostmanCollectionForApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.postman_collection = r.env.response_body if Utils.match_content_type(content_type, 'application/octet-stream')
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GetAllApiEndpointsRequest)).returns(Utils::FieldAugmented) }
    def get_all_api_endpoints(request)
      # get_all_api_endpoints - Get all Api endpoints for a particular apiID.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAllApiEndpointsRequest,
        base_url,
        '/v1/apis/{apiID}/api_endpoints',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAllApiEndpointsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::ApiEndpoint])
          res.classes = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GetAllForVersionApiEndpointsRequest)).returns(Utils::FieldAugmented) }
    def get_all_for_version_api_endpoints(request)
      # get_all_for_version_api_endpoints - Get all ApiEndpoints for a particular apiID and versionID.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAllForVersionApiEndpointsRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAllForVersionApiEndpointsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::ApiEndpoint])
          res.classes = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GetApiEndpointRequest)).returns(Utils::FieldAugmented) }
    def get_api_endpoint(request)
      # get_api_endpoint - Get an ApiEndpoint.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ApiEndpoint)
          res.api_endpoint = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: Operations::UpsertApiEndpointRequest).returns(Utils::FieldAugmented) }
    def upsert_api_endpoint(request)
      # upsert_api_endpoint - Upsert an ApiEndpoint.
      # Upsert an ApiEndpoint. If the ApiEndpoint does not exist it will be created, otherwise it will be updated.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpsertApiEndpointRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :api_endpoint, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UpsertApiEndpointResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ApiEndpoint)
          res.api_endpoint = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
