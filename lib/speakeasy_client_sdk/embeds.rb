# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class Embeds
    extend T::Sig
    # REST APIs for managing embeds

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenRequest)).returns(::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenResponse) }
    def get_embed_access_token(request)
      # get_embed_access_token - Get an embed access token for the current workspace.
      # Returns an embed access token for the current workspace. This can be used to authenticate access to externally embedded content.
      # Filters can be applied allowing views to be filtered to things like particular customerIds.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/workspace/embed-access-token"
      headers = {}
      query_params = Utils.get_query_params(::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::EmbedAccessTokenResponse)
          res.embed_access_token_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { returns(::SpeakeasyClientSDK::Operations::GetValidEmbedAccessTokensResponse) }
    def get_valid_embed_access_tokens
      # get_valid_embed_access_tokens - Get all valid embed access tokens for the current workspace.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/workspace/embed-access-tokens/valid"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GetValidEmbedAccessTokensResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::SpeakeasyClientSDK::Shared::EmbedToken])
          res.embed_tokens = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenRequest)).returns(::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenResponse) }
    def revoke_embed_access_token(request)
      # revoke_embed_access_token - Revoke an embed access EmbedToken.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenRequest,
        base_url,
        '/v1/workspace/embed-access-tokens/{tokenID}',
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

      res = ::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenResponse.new(
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
