# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetApisResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :apis, T.nilable(T::Array[::OpenApiSDK::Shared::Api])
      # Default error response
      field :error, T.nilable(::OpenApiSDK::Shared::Error)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, apis: T.nilable(T::Array[::OpenApiSDK::Shared::Api]), error: T.nilable(::OpenApiSDK::Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, apis: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @apis = apis
        @error = error
      end
    end
  end
end
