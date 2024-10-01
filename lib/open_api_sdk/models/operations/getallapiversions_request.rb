# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetAllApiVersionsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # Metadata to filter Apis on
      field :metadata, T.nilable(T::Hash[Symbol, T::Array[::String]]), { 'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true } }
      # Configuration for filter operations
      field :op, T.nilable(::OpenApiSDK::Operations::QueryParamOp), { 'query_param': { 'field_name': 'op', 'style': 'deepObject', 'explode': true } }


      sig { params(api_id: ::String, metadata: T.nilable(T::Hash[Symbol, T::Array[::String]]), op: T.nilable(::OpenApiSDK::Operations::QueryParamOp)).void }
      def initialize(api_id: nil, metadata: nil, op: nil)
        @api_id = api_id
        @metadata = metadata
        @op = op
      end
    end
  end
end