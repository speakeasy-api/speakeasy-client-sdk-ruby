# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GeneratePostmanCollectionForApiEndpointRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the ApiEndpoint to generate a Postman collection for.
      field :api_endpoint_id, String, { 'path_param': { 'field_name': 'apiEndpointID', 'style': 'simple', 'explode': false } }
      # The ID of the Api to generate a Postman collection for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to generate a Postman collection for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_endpoint_id: String, api_id: String, version_id: String).void }
      def initialize(api_endpoint_id: nil, api_id: nil, version_id: nil)
        @api_endpoint_id = api_endpoint_id
        @api_id = api_id
        @version_id = version_id
      end
    end


    class GeneratePostmanCollectionForApiEndpointResponse < SpeakeasyClientSDK::Utils::FieldAugmented
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
