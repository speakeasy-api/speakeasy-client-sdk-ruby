# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GenerateRequestPostmanCollectionRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the request to retrieve.
      field :request_id, String, { 'path_param': { 'field_name': 'requestID', 'style': 'simple', 'explode': false } }


      sig { params(request_id: String).void }
      def initialize(request_id: nil)
        @request_id = request_id
      end
    end


    class GenerateRequestPostmanCollectionResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Default error response
      field :error, T.nilable(Shared::Error)
      # OK
      field :postman_collection, T.nilable(String)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), postman_collection: T.nilable(String), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, postman_collection: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @postman_collection = postman_collection
        @raw_response = raw_response
      end
    end
  end
end
