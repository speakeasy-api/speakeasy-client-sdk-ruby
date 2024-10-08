# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Apis
    extend T::Sig
    # REST APIs for managing Api entities

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(op: T.nilable(::OpenApiSDK::Operations::Op), metadata: T.nilable(T::Hash[Symbol, T::Array[::String]])).returns(::OpenApiSDK::Operations::GetApisResponse) }
    def get_all(op = nil, metadata = nil)
      # get_all - Get a list of Apis for a given workspace
      # Get a list of all Apis and their versions for a given workspace.
      # Supports filtering the APIs based on metadata attributes.
      request = ::OpenApiSDK::Operations::GetApisRequest.new(
        
        op: op,
        metadata: metadata
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/apis"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetApisRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetApisResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::Api])
          res.apis = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(api_id: ::String, op: T.nilable(::OpenApiSDK::Operations::QueryParamOp), metadata: T.nilable(T::Hash[Symbol, T::Array[::String]])).returns(::OpenApiSDK::Operations::GetAllApiVersionsResponse) }
    def get_all_versions(api_id, op = nil, metadata = nil)
      # get_all_versions - Get all Api versions for a particular ApiEndpoint.
      # Get all Api versions for a particular ApiEndpoint.
      # Supports filtering the versions based on metadata attributes.
      request = ::OpenApiSDK::Operations::GetAllApiVersionsRequest.new(
        
        api_id: api_id,
        op: op,
        metadata: metadata
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetAllApiVersionsRequest,
        base_url,
        '/v1/apis/{apiID}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetAllApiVersionsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetAllApiVersionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::Api])
          res.apis = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(api_id: ::String, api: ::OpenApiSDK::Shared::ApiInput).returns(::OpenApiSDK::Operations::UpsertApiResponse) }
    def upsert(api_id, api)
      # upsert - Upsert an Api
      # Upsert an Api. If the Api does not exist, it will be created.
      # If the Api exists, it will be updated.
      request = ::OpenApiSDK::Operations::UpsertApiRequest.new(
        
        api_id: api_id,
        api: api
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::UpsertApiRequest,
        base_url,
        '/v1/apis/{apiID}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :api, :json)
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

      res = ::OpenApiSDK::Operations::UpsertApiResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Api)
          res.api = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(api_id: ::String, version_id: ::String).returns(::OpenApiSDK::Operations::DeleteApiResponse) }
    def delete(api_id, version_id)
      # delete - Delete an Api.
      # Delete a particular version of an Api. The will also delete all associated ApiEndpoints, Metadata, Schemas & Request Logs (if using a Postgres datastore).
      request = ::OpenApiSDK::Operations::DeleteApiRequest.new(
        
        api_id: api_id,
        version_id: version_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteApiRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteApiResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(api_id: ::String, version_id: ::String).returns(::OpenApiSDK::Operations::GenerateOpenApiSpecResponse) }
    def generate_open_api(api_id, version_id)
      # generate_open_api - Generate an OpenAPI specification for a particular Api.
      # This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
      # Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.
      request = ::OpenApiSDK::Operations::GenerateOpenApiSpecRequest.new(
        
        api_id: api_id,
        version_id: version_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GenerateOpenApiSpecRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/generate/openapi',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GenerateOpenApiSpecResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::GenerateOpenApiSpecDiff)
          res.generate_open_api_spec_diff = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(api_id: ::String, version_id: ::String).returns(::OpenApiSDK::Operations::GeneratePostmanCollectionResponse) }
    def generate_postman(api_id, version_id)
      # generate_postman - Generate a Postman collection for a particular Api.
      # Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.
      request = ::OpenApiSDK::Operations::GeneratePostmanCollectionRequest.new(
        
        api_id: api_id,
        version_id: version_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GeneratePostmanCollectionRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/generate/postman',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/octet-stream;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GeneratePostmanCollectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        res.postman_collection = r.env.response_body if Utils.match_content_type(content_type, 'application/octet-stream')
      
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
