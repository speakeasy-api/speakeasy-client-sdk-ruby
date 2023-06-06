# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Embeds
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, language: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, language, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @language = language
      @sdk_version = sdk_version
      @gen_version = gen_version
    end

    sig { params(request: Operations::GetEmbedAccessTokenRequest).returns(Utils::FieldAugmented) }
    def get_embed_access_token(request)
      # get_embed_access_token - Get an embed access token for the current workspace.
      # Returns an embed access token for the current workspace. This can be used to authenticate access to externally embedded content.
      # Filters can be applied allowing views to be filtered to things like particular customerIds.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/v1/workspace/embed-access-token"
      headers = {}
      query_params = Utils.get_query_params(Operations::GetEmbedAccessTokenRequest, request)
      headers['Accept'] = 'application/json;q=1, application/json;q=0'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetEmbedAccessTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::EmbedAccessTokenResponse)
          res.embed_access_token_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def get_valid_embed_access_tokens
      # get_valid_embed_access_tokens - Get all valid embed access tokens for the current workspace.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/v1/workspace/embed-access-tokens/valid"
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/json;q=0'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetValidEmbedAccessTokensResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::EmbedToken])
          res.embed_tokens = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: Operations::RevokeEmbedAccessTokenRequest).returns(Utils::FieldAugmented) }
    def revoke_embed_access_token(request)
      # revoke_embed_access_token - Revoke an embed access EmbedToken.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::RevokeEmbedAccessTokenRequest,
        base_url,
        '/v1/workspace/embed-access-tokens/{tokenID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RevokeEmbedAccessTokenResponse.new(
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
  end
end
