# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class SearchWorkspaceEventsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier of the workspace.
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }
      # A specific gen lock ID for the events.
      field :generate_gen_lock_id, T.nilable(::String), { 'query_param': { 'field_name': 'generate_gen_lock_id', 'style': 'form', 'explode': true } }
      # Specified interaction type for events.
      field :interaction_type, T.nilable(::OpenApiSDK::Shared::InteractionType), { 'query_param': { 'field_name': 'interaction_type', 'style': 'form', 'explode': true } }
      # Unique identifier of the lint report digest.
      field :lint_report_digest, T.nilable(::String), { 'query_param': { 'field_name': 'lint_report_digest', 'style': 'form', 'explode': true } }
      # Unique identifier of the openapi diff report digest.
      field :openapi_diff_report_digest, T.nilable(::String), { 'query_param': { 'field_name': 'openapi_diff_report_digest', 'style': 'form', 'explode': true } }
      # Unique identifier of the source revision digest.
      field :source_revision_digest, T.nilable(::String), { 'query_param': { 'field_name': 'source_revision_digest', 'style': 'form', 'explode': true } }


      sig { params(workspace_id: ::String, generate_gen_lock_id: T.nilable(::String), interaction_type: T.nilable(::OpenApiSDK::Shared::InteractionType), lint_report_digest: T.nilable(::String), openapi_diff_report_digest: T.nilable(::String), source_revision_digest: T.nilable(::String)).void }
      def initialize(workspace_id: nil, generate_gen_lock_id: nil, interaction_type: nil, lint_report_digest: nil, openapi_diff_report_digest: nil, source_revision_digest: nil)
        @workspace_id = workspace_id
        @generate_gen_lock_id = generate_gen_lock_id
        @interaction_type = interaction_type
        @lint_report_digest = lint_report_digest
        @openapi_diff_report_digest = openapi_diff_report_digest
        @source_revision_digest = source_revision_digest
      end
    end
  end
end