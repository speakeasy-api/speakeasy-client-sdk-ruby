# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetSchemaResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Default error response
      field :error, T.nilable(::SpeakeasyClientSDK::Shared::Error)
      # OK
      field :schema, T.nilable(::SpeakeasyClientSDK::Shared::Schema)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, error: T.nilable(::SpeakeasyClientSDK::Shared::Error), schema: T.nilable(::SpeakeasyClientSDK::Shared::Schema)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, error: nil, schema: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @error = error
        @schema = schema
      end
    end
  end
end
