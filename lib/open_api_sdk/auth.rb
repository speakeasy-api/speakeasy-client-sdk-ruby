# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Auth
    extend T::Sig
    # REST APIs for managing Authentication

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::OpenApiSDK::Operations::ValidateApiKeyResponse) }
    def validate_api_key
      # validate_api_key - Validate the current api key.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/auth/validate"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::ValidateApiKeyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ApiKeyDetails)
          res.api_key_details = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::GetUserResponse) }
    def get_user
      # get_user - Get information about the current user.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/user"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetUserResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::User)
          res.user = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(workspace_id: ::String).returns(::OpenApiSDK::Operations::GetAccessTokenResponse) }
    def get_access_token(workspace_id)
      # get_access_token - Get or refresh an access token for the current workspace.
      request = ::OpenApiSDK::Operations::GetAccessTokenRequest.new(
        
        workspace_id: workspace_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/auth/access_token"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetAccessTokenRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetAccessTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::AccessToken)
          res.access_token = out
        end
      elsif r.status >= 400 && r.status < 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(gen_lock_id: T.nilable(::String), target_type: T.nilable(::String), passive: T.nilable(T::Boolean)).returns(::OpenApiSDK::Operations::GetWorkspaceAccessResponse) }
    def get_allowances(gen_lock_id = nil, target_type = nil, passive = nil)
      # get_allowances - Get access allowances for a particular workspace
      # Checks if generation is permitted for a particular run of the CLI
      request = ::OpenApiSDK::Operations::GetWorkspaceAccessRequest.new(
        
        gen_lock_id: gen_lock_id,
        target_type: target_type,
        passive: passive
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/workspace/access"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetWorkspaceAccessRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetWorkspaceAccessResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::AccessDetails)
          res.access_details = out
        end
      end
      res
    end
  end
end
