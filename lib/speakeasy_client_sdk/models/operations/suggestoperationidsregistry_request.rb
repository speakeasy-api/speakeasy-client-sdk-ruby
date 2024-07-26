# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class SuggestOperationIDsRegistryRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :namespace_name, ::String, { 'path_param': { 'field_name': 'namespace_name', 'style': 'simple', 'explode': false } }
      # Tag or digest
      field :revision_reference, ::String, { 'path_param': { 'field_name': 'revision_reference', 'style': 'simple', 'explode': false } }

      field :x_session_id, ::String, { 'header': { 'field_name': 'x-session-id', 'style': 'simple', 'explode': false } }
      # Max number of suggestions to request
      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }
      # The schema file to upload provided as a multipart/form-data file segment.
      field :suggest_operation_i_ds_opts, T.nilable(::SpeakeasyClientSDK::Shared::SuggestOperationIDsOpts), { 'request': { 'media_type': 'application/json' } }


      sig { params(namespace_name: ::String, revision_reference: ::String, x_session_id: ::String, limit: T.nilable(::Float), suggest_operation_i_ds_opts: T.nilable(::SpeakeasyClientSDK::Shared::SuggestOperationIDsOpts)).void }
      def initialize(namespace_name: nil, revision_reference: nil, x_session_id: nil, limit: nil, suggest_operation_i_ds_opts: nil)
        @namespace_name = namespace_name
        @revision_reference = revision_reference
        @x_session_id = x_session_id
        @limit = limit
        @suggest_operation_i_ds_opts = suggest_operation_i_ds_opts
      end
    end
  end
end
