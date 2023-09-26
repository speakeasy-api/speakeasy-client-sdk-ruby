# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations
    # Configuration for filter operations
    class GetAllApiVersionsOp < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether to AND or OR the filters
      field :and_, T::Boolean, { 'query_param': { 'field_name': 'and' } }


      sig { params(and_: T::Boolean).void }
      def initialize(and_: nil)
        @and_ = and_
      end
    end


    class GetAllApiVersionsRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # Metadata to filter Apis on
      field :metadata, T.nilable(T::Hash[Symbol, T::Array[String]]), { 'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true } }
      # Configuration for filter operations
      field :op, T.nilable(Operations::GetAllApiVersionsOp), { 'query_param': { 'field_name': 'op', 'style': 'deepObject', 'explode': true } }


      sig { params(api_id: String, metadata: T.nilable(T::Hash[Symbol, T::Array[String]]), op: T.nilable(Operations::GetAllApiVersionsOp)).void }
      def initialize(api_id: nil, metadata: nil, op: nil)
        @api_id = api_id
        @metadata = metadata
        @op = op
      end
    end


    class GetAllApiVersionsResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :apis, T.nilable(T::Array[Shared::Api])
      # Default error response
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, apis: T.nilable(T::Array[Shared::Api]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, apis: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @apis = apis
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
