# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # An Api is representation of a API (a collection of API Endpoints) within the Speakeasy Platform.
    class Api < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of this Api. This is a human-readable name (subject to change).
      field :api_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('api_id') } }
      # Creation timestamp.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # A detailed description of the Api.
      field :description, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('description') } }
      # Last update timestamp.
      field :updated_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The version ID of this Api. This is semantic version identifier.
      field :version_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('version_id') } }
      # The workspace ID this Api belongs to.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }
      # Determines if all the endpoints within the Api are found in the OpenAPI spec associated with the Api.
      field :matched, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('matched') } }
      # A set of values associated with a meta_data key. This field is only set on get requests.
      field :meta_data, T.nilable(T::Hash[Symbol, T::Array[::String]]), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('meta_data') } }


      sig { params(api_id: ::String, created_at: ::DateTime, description: ::String, updated_at: ::DateTime, version_id: ::String, workspace_id: ::String, matched: T.nilable(T::Boolean), meta_data: T.nilable(T::Hash[Symbol, T::Array[::String]])).void }
      def initialize(api_id: nil, created_at: nil, description: nil, updated_at: nil, version_id: nil, workspace_id: nil, matched: nil, meta_data: nil)
        @api_id = api_id
        @created_at = created_at
        @description = description
        @updated_at = updated_at
        @version_id = version_id
        @workspace_id = workspace_id
        @matched = matched
        @meta_data = meta_data
      end
    end
  end
end
