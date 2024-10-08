# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetWorkspaceTargetsDeprecatedRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier of the workspace.
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }
      # Filter to only return targets with events created after this timestamp
      field :after_last_event_created_at, T.nilable(::DateTime), { 'query_param': { 'field_name': 'after_last_event_created_at', 'style': 'form', 'explode': true } }


      sig { params(workspace_id: ::String, after_last_event_created_at: T.nilable(::DateTime)).void }
      def initialize(workspace_id: nil, after_last_event_created_at: nil)
        @workspace_id = workspace_id
        @after_last_event_created_at = after_last_event_created_at
      end
    end
  end
end
