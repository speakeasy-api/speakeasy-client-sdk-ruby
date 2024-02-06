# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class FindApiEndpointResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :api_endpoint, T.nilable(::SpeakeasyClientSDK::Shared::ApiEndpoint)
      # Default error response
      field :error, T.nilable(::SpeakeasyClientSDK::Shared::Error)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, api_endpoint: T.nilable(::SpeakeasyClientSDK::Shared::ApiEndpoint), error: T.nilable(::SpeakeasyClientSDK::Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, api_endpoint: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @api_endpoint = api_endpoint
        @error = error
      end
    end
  end
end
