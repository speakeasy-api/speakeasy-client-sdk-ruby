# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GetAllForVersionApiEndpointsRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve ApiEndpoints for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to retrieve ApiEndpoints for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: String, version_id: String).void }
      def initialize(api_id: nil, version_id: nil)
        @api_id = api_id
        @version_id = version_id
      end
    end


    class GetAllForVersionApiEndpointsResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :api_endpoints, T.nilable(T::Array[Shared::ApiEndpoint])
      # Default error response
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, api_endpoints: T.nilable(T::Array[Shared::ApiEndpoint]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, api_endpoints: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @api_endpoints = api_endpoints
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
