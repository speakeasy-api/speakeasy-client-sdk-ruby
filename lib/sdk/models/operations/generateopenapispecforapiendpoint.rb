# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/generateopenapispecdiff'

module SpeakeasyClientSDK
  module Operations

    class GenerateOpenApiSpecForApiEndpointRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the ApiEndpoint to generate an OpenAPI specification for.
      field :api_endpoint_id, String, { 'path_param': { 'field_name': 'apiEndpointID', 'style': 'simple', 'explode': false } }
      # The ID of the Api to generate an OpenAPI specification for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to generate an OpenAPI specification for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_endpoint_id: String, api_id: String, version_id: String).void }
      def initialize(api_endpoint_id: nil, api_id: nil, version_id: nil)
        @api_endpoint_id = api_endpoint_id
        @api_id = api_id
        @version_id = version_id
      end
    end


    class GenerateOpenApiSpecForApiEndpointResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Default error response
      field :error, T.nilable(Shared::Error)
      # OK
      field :generate_open_api_spec_diff, T.nilable(Shared::GenerateOpenApiSpecDiff)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), generate_open_api_spec_diff: T.nilable(Shared::GenerateOpenApiSpecDiff), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, generate_open_api_spec_diff: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @generate_open_api_spec_diff = generate_open_api_spec_diff
        @raw_response = raw_response
      end
    end
  end
end
