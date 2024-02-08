# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class Schemas
    extend T::Sig
    # REST APIs for managing Schema entities

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::DeleteSchemaRequest)).returns(Utils::FieldAugmented) }
    def delete_schema(request)
      # delete_schema - Delete a particular schema revision for an Api.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::DeleteSchemaRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}',
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

      res = ::SpeakeasyClientSDK::Operations::DeleteSchemaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::DownloadSchemaRequest)).returns(Utils::FieldAugmented) }
    def download_schema(request)
      # download_schema - Download the latest schema for a particular apiID.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::DownloadSchemaRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema/download',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/x-yaml;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::DownloadSchemaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.two_hundred_application_json_schema = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
        res.two_hundred_application_x_yaml_schema = r.env.response_body if Utils.match_content_type(content_type, 'application/x-yaml')
      
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionRequest)).returns(Utils::FieldAugmented) }
    def download_schema_revision(request)
      # download_schema_revision - Download a particular schema revision for an Api.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}/download',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/x-yaml;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.two_hundred_application_json_schema = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
        res.two_hundred_application_x_yaml_schema = r.env.response_body if Utils.match_content_type(content_type, 'application/x-yaml')
      
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaRequest)).returns(Utils::FieldAugmented) }
    def get_schema(request)
      # get_schema - Get information about the latest schema.
      # Returns information about the last uploaded schema for a particular API version. 
      # This won't include the schema itself, that can be retrieved via the downloadSchema operation.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::GetSchemaRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema',
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

      res = ::SpeakeasyClientSDK::Operations::GetSchemaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Schema)
          res.schema = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaDiffRequest)).returns(Utils::FieldAugmented) }
    def get_schema_diff(request)
      # get_schema_diff - Get a diff of two schema revisions for an Api.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::GetSchemaDiffRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema/{baseRevisionID}/diff/{targetRevisionID}',
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

      res = ::SpeakeasyClientSDK::Operations::GetSchemaDiffResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::SchemaDiff)
          res.schema_diff = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaRevisionRequest)).returns(Utils::FieldAugmented) }
    def get_schema_revision(request)
      # get_schema_revision - Get information about a particular schema revision for an Api.
      # Returns information about the last uploaded schema for a particular schema revision. 
      # This won't include the schema itself, that can be retrieved via the downloadSchema operation.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::GetSchemaRevisionRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}',
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

      res = ::SpeakeasyClientSDK::Operations::GetSchemaRevisionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Schema)
          res.schema = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetSchemasRequest)).returns(Utils::FieldAugmented) }
    def get_schemas(request)
      # get_schemas - Get information about all schemas associated with a particular apiID.
      # Returns information the schemas associated with a particular apiID. 
      # This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::GetSchemasRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schemas',
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

      res = ::SpeakeasyClientSDK::Operations::GetSchemasResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::SpeakeasyClientSDK::Shared::Schema])
          res.classes = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: ::SpeakeasyClientSDK::Operations::RegisterSchemaRequest).returns(Utils::FieldAugmented) }
    def register_schema(request)
      # register_schema - Register a schema.
      # Allows uploading a schema for a particular API version.
      # This will be used to populate ApiEndpoints and used as a base for any schema generation if present.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::RegisterSchemaRequest,
        base_url,
        '/v1/apis/{apiID}/version/{versionID}/schema',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :multipart)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
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

      res = ::SpeakeasyClientSDK::Operations::RegisterSchemaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
