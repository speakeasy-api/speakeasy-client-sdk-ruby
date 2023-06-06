# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module SpeakeasyClientSDK
  module Shared
    # A Schema represents an API schema for a particular Api and Version.
    class Schema < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api this Schema belongs to.
      field :api_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('api_id') } }
      # Creation timestamp.
      field :created_at, DateTime, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # A detailed description of the Schema.
      field :description, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }
      # An ID referencing this particular revision of the Schema.
      field :revision_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('revision_id') } }
      # The version ID of the Api this Schema belongs to.
      field :version_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('version_id') } }
      # The workspace ID this Schema belongs to.
      field :workspace_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('workspace_id') } }


      sig { params(api_id: String, created_at: DateTime, description: String, revision_id: String, version_id: String, workspace_id: String).void }
      def initialize(api_id: nil, created_at: nil, description: nil, revision_id: nil, version_id: nil, workspace_id: nil)
        @api_id = api_id
        @created_at = created_at
        @description = description
        @revision_id = revision_id
        @version_id = version_id
        @workspace_id = workspace_id
      end
    end
  end
end
