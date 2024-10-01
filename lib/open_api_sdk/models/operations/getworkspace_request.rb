# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetWorkspaceRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier of the workspace.
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }


      sig { params(workspace_id: ::String).void }
      def initialize(workspace_id: nil)
        @workspace_id = workspace_id
      end
    end
  end
end
