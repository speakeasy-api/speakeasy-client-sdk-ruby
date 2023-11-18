# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class DownloadSchemaRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to download the schema for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to delete metadata for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: String, version_id: String).void }
      def initialize(api_id: nil, version_id: nil)
        @api_id = api_id
        @version_id = version_id
      end
    end


    class DownloadSchemaResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :two_hundred_application_json_schema, T.nilable(String)
      # OK
      field :two_hundred_application_x_yaml_schema, T.nilable(String)
      # Default error response
      field :error, T.nilable(Shared::Error)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_schema: T.nilable(String), two_hundred_application_x_yaml_schema: T.nilable(String), error: T.nilable(Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, two_hundred_application_json_schema: nil, two_hundred_application_x_yaml_schema: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @two_hundred_application_json_schema = two_hundred_application_json_schema
        @two_hundred_application_x_yaml_schema = two_hundred_application_x_yaml_schema
        @error = error
      end
    end
  end
end
