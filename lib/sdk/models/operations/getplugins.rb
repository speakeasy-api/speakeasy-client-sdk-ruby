# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GetPluginsResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :classes, T.nilable(T::Array[Shared::Plugin])
      # Default error response
      field :error, T.nilable(Shared::Error)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, classes: T.nilable(T::Array[Shared::Plugin]), error: T.nilable(Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, classes: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @classes = classes
        @error = error
      end
    end
  end
end
