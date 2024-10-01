# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateWorkspaceDetailsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The workspace details to update.
      field :workspace, ::OpenApiSDK::Shared::Workspace, { 'request': { 'media_type': 'application/json' } }
      # Unique identifier of the workspace.
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }


      sig { params(workspace: ::OpenApiSDK::Shared::Workspace, workspace_id: ::String).void }
      def initialize(workspace: nil, workspace_id: nil)
        @workspace = workspace
        @workspace_id = workspace_id
      end
    end
  end
end