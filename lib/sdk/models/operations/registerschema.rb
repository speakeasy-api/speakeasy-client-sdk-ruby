# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class RegisterSchemaRequestBodyFile < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :content, String, { 'multipart_form': { 'content': true } }

      field :file, String, { 'multipart_form': { 'field_name': 'file' } }


      sig { params(content: String, file: String).void }
      def initialize(content: nil, file: nil)
        @content = content
        @file = file
      end
    end

    # The schema file to upload provided as a multipart/form-data file segment.
    class RegisterSchemaRequestBody < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :file, Operations::RegisterSchemaRequestBodyFile, { 'multipart_form': { 'file': true } }


      sig { params(file: Operations::RegisterSchemaRequestBodyFile).void }
      def initialize(file: nil)
        @file = file
      end
    end


    class RegisterSchemaRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to get the schema for.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The schema file to upload provided as a multipart/form-data file segment.
      field :request_body, Operations::RegisterSchemaRequestBody, { 'request': { 'media_type': 'multipart/form-data' } }
      # The version ID of the Api to delete metadata for.
      field :version_id, String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: String, request_body: Operations::RegisterSchemaRequestBody, version_id: String).void }
      def initialize(api_id: nil, request_body: nil, version_id: nil)
        @api_id = api_id
        @request_body = request_body
        @version_id = version_id
      end
    end


    class RegisterSchemaResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer
      # Default error response
      field :error, T.nilable(Shared::Error)

      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
