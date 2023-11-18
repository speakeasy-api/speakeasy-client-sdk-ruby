# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apiendpoint'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class FindApiEndpointRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api the ApiEndpoint belongs to.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The displayName of the ApiEndpoint to find (set by operationId from OpenAPI schema).
      field :display_name, String, { 'path_param': { 'field_name': 'displayName', 'style': 'simple', 'explode': false } }
      # The version ID of the Api the ApiEndpoint belongs to.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: String, display_name: String, version_id: String).void }
      def initialize(api_id: nil, display_name: nil, version_id: nil)
        @api_id = api_id
        @display_name = display_name
        @version_id = version_id
      end
    end


    class FindApiEndpointResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :api_endpoint, T.nilable(Shared::ApiEndpoint)
      # Default error response
      field :error, T.nilable(Shared::Error)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, api_endpoint: T.nilable(Shared::ApiEndpoint), error: T.nilable(Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, api_endpoint: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @api_endpoint = api_endpoint
        @error = error
      end
    end
  end
end
