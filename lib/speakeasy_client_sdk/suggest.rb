# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class Suggest
    extend T::Sig
    # REST APIs for managing LLM OAS suggestions

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody).returns(::SpeakeasyClientSDK::Operations::SuggestOperationIDsResponse) }
    def suggest_operation_i_ds(request)
      # suggest_operation_i_ds - Generate operation ID suggestions.
      # Get suggestions from an LLM model for improving the operationIDs in the provided schema.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/suggest/operation_ids"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :multipart)
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

      res = ::SpeakeasyClientSDK::Operations::SuggestOperationIDsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Operations::SuggestOperationIDsSuggestion)
          res.suggestion = out
        end
      end
      res
    end
  end
end
