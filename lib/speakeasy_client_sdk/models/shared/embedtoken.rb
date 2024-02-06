# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A representation of an embed token granted for working with Speakeasy components.
    class EmbedToken < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Creation timestamp.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The ID of the user that created this token.
      field :created_by, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_by') } }
      # A detailed description of the EmbedToken.
      field :description, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('description') } }
      # The time this token expires.
      field :expires_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('expires_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The filters applied to this token.
      field :filters, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('filters') } }
      # The ID of this EmbedToken.
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # The workspace ID this token belongs to.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }
      # The last time this token was used.
      field :last_used, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('last_used'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The time this token was revoked.
      field :revoked_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('revoked_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The ID of the user that revoked this token.
      field :revoked_by, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('revoked_by') } }


      sig { params(created_at: ::DateTime, created_by: ::String, description: ::String, expires_at: ::DateTime, filters: ::String, id: ::String, workspace_id: ::String, last_used: T.nilable(::DateTime), revoked_at: T.nilable(::DateTime), revoked_by: T.nilable(::String)).void }
      def initialize(created_at: nil, created_by: nil, description: nil, expires_at: nil, filters: nil, id: nil, workspace_id: nil, last_used: nil, revoked_at: nil, revoked_by: nil)
        @created_at = created_at
        @created_by = created_by
        @description = description
        @expires_at = expires_at
        @filters = filters
        @id = id
        @workspace_id = workspace_id
        @last_used = last_used
        @revoked_at = revoked_at
        @revoked_by = revoked_by
      end
    end
  end
end
