# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GetValidEmbedAccessTokensResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :classes, T.nilable(T::Array[Shared::EmbedToken])
      # Default error response
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, classes: T.nilable(T::Array[Shared::EmbedToken]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, classes: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @classes = classes
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
