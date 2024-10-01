# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Apiendpoints
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(api_id: ::String).returns(::OpenApiSDK::Operations::GetAllApiEndpointsResponse) }
    def list(api_id)
      # list - Get all Api endpoints for a particular apiID.
      request = ::OpenApiSDK::Operations::GetAllApiEndpointsRequest.new(
        
        api_id: api_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetAllApiEndpointsRequest,
        base_url,
        '/v1/apis/{apiID}/api_endpoints',
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

      res = ::OpenApiSDK::Operations::GetAllApiEndpointsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::ApiEndpoint])
          res.api_endpoints = out
        end
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
