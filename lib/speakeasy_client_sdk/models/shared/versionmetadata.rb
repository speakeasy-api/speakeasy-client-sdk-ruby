# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A set of keys and associated values, attached to a particular version of an Api.
    class VersionMetadata < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api this Metadata belongs to.
      field :api_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('api_id') } }
      # Creation timestamp.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The key for this metadata.
      field :meta_key, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('meta_key') } }
      # One of the values for this metadata.
      field :meta_value, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('meta_value') } }
      # The version ID of the Api this Metadata belongs to.
      field :version_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('version_id') } }
      # The workspace ID this Metadata belongs to.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }


      sig { params(api_id: ::String, created_at: ::DateTime, meta_key: ::String, meta_value: ::String, version_id: ::String, workspace_id: ::String).void }
      def initialize(api_id: nil, created_at: nil, meta_key: nil, meta_value: nil, version_id: nil, workspace_id: nil)
        @api_id = api_id
        @created_at = created_at
        @meta_key = meta_key
        @meta_value = meta_value
        @version_id = version_id
        @workspace_id = workspace_id
      end
    end
  end
end
