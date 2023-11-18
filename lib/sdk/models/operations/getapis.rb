# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations
    # Configuration for filter operations
    class QueryParamOp < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether to AND or OR the filters
      field :and_, T::Boolean, { 'query_param': { 'field_name': 'and' } }


      sig { params(and_: T::Boolean).void }
      def initialize(and_: nil)
        @and_ = and_
      end
    end


    class GetApisRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Metadata to filter Apis on
      field :metadata, T.nilable(T::Hash[Symbol, T::Array[String]]), { 'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true } }
      # Configuration for filter operations
      field :op, T.nilable(Operations::QueryParamOp), { 'query_param': { 'field_name': 'op', 'style': 'deepObject', 'explode': true } }


      sig { params(metadata: T.nilable(T::Hash[Symbol, T::Array[String]]), op: T.nilable(Operations::QueryParamOp)).void }
      def initialize(metadata: nil, op: nil)
        @metadata = metadata
        @op = op
      end
    end


    class GetApisResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :classes, T.nilable(T::Array[Shared::Api])
      # Default error response
      field :error, T.nilable(Shared::Error)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, classes: T.nilable(T::Array[Shared::Api]), error: T.nilable(Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, classes: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @classes = classes
        @error = error
      end
    end
  end
end
