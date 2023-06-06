# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/schema'

module OpenApiSDK
  module Operations

    class GetSchemaRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to get the schema for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to delete metadata for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: String, version_id: String).void }
      def initialize(api_id: nil, version_id: nil)
        @api_id = api_id
        @version_id = version_id
      end
    end


    class GetSchemaResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer
      # Default error response
      field :error, T.nilable(Shared::Error)

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :schema, T.nilable(Shared::Schema)


      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), schema: T.nilable(Shared::Schema)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, schema: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @raw_response = raw_response
        @schema = schema
      end
    end
  end
end
