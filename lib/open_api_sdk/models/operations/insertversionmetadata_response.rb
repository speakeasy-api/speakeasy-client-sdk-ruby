# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class InsertVersionMetadataResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Default error response
      field :error, T.nilable(::OpenApiSDK::Shared::Error)
      # OK
      field :version_metadata, T.nilable(::OpenApiSDK::Shared::VersionMetadata)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, error: T.nilable(::OpenApiSDK::Shared::Error), version_metadata: T.nilable(::OpenApiSDK::Shared::VersionMetadata)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, error: nil, version_metadata: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @error = error
        @version_metadata = version_metadata
      end
    end
  end
end