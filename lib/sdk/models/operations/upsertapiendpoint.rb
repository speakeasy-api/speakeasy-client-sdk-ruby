# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apiendpointinput'
require_relative '../shared/apiendpoint'
require_relative '../shared/error'

module OpenApiSDK
  module Operations

    class UpsertApiEndpointRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the ApiEndpoint to upsert.
      field :api_endpoint_id, String, { 'path_param': { 'field_name': 'apiEndpointID', 'style': 'simple', 'explode': false } }
      # A JSON representation of the ApiEndpoint to upsert.
      field :api_endpoint_input, Shared::ApiEndpointInput, { 'request': { 'media_type': 'application/json' } }
      # The ID of the Api the ApiEndpoint belongs to.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api the ApiEndpoint belongs to.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_endpoint_id: String, api_endpoint_input: Shared::ApiEndpointInput, api_id: String, version_id: String).void }
      def initialize(api_endpoint_id: nil, api_endpoint_input: nil, api_id: nil, version_id: nil)
        @api_endpoint_id = api_endpoint_id
        @api_endpoint_input = api_endpoint_input
        @api_id = api_id
        @version_id = version_id
      end
    end


    class UpsertApiEndpointResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer
      # OK
      field :api_endpoint, T.nilable(Shared::ApiEndpoint)
      # Default error response
      field :error, T.nilable(Shared::Error)

      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, api_endpoint: T.nilable(Shared::ApiEndpoint), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, api_endpoint: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @api_endpoint = api_endpoint
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
