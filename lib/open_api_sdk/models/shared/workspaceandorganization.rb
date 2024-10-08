# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A workspace and organization
    class WorkspaceAndOrganization < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A speakeasy organization
      field :organization, ::OpenApiSDK::Shared::Organization, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('organization') } }
      # A speakeasy workspace
      field :workspace, ::OpenApiSDK::Shared::Workspace, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('workspace') } }


      sig { params(organization: ::OpenApiSDK::Shared::Organization, workspace: ::OpenApiSDK::Shared::Workspace).void }
      def initialize(organization: nil, workspace: nil)
        @organization = organization
        @workspace = workspace
      end
    end
  end
end
