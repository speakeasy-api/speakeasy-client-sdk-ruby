# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetSchemaDiffRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve schemas for.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The base revision ID of the schema to retrieve.
      field :base_revision_id, ::String, { 'path_param': { 'field_name': 'baseRevisionID', 'style': 'simple', 'explode': false } }
      # The target revision ID of the schema to retrieve.
      field :target_revision_id, ::String, { 'path_param': { 'field_name': 'targetRevisionID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to delete metadata for.
      field :version_id, ::String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: ::String, base_revision_id: ::String, target_revision_id: ::String, version_id: ::String).void }
      def initialize(api_id: nil, base_revision_id: nil, target_revision_id: nil, version_id: nil)
        @api_id = api_id
        @base_revision_id = base_revision_id
        @target_revision_id = target_revision_id
        @version_id = version_id
      end
    end
  end
end
