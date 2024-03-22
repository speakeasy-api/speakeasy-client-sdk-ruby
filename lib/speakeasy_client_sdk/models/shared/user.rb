# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class User < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Indicates whether the user is an admin.
      field :admin, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('admin') } }
      # Indicates whether the user has been confirmed.
      field :confirmed, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('confirmed') } }
      # Timestamp of the user's creation.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Display name of the user.
      field :display_name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('display_name') } }
      # Email address of the user.
      field :email, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('email') } }
      # Indicates whether the email address has been verified.
      field :email_verified, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('email_verified') } }
      # Unique identifier for the user.
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # Timestamp of the last login.
      field :last_login_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('last_login_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Timestamp of the user's last update.
      field :updated_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Indicates whether the user has been whitelisted.
      field :whitelisted, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('whitelisted') } }
      # Identifier of the default workspace.
      field :default_workspace_id, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('default_workspace_id') } }
      # GitHub handle of the user.
      field :github_handle, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('github_handle') } }
      # URL of the user's photo.
      field :photo_url, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('photo_url') } }


      sig { params(admin: T::Boolean, confirmed: T::Boolean, created_at: ::DateTime, display_name: ::String, email: ::String, email_verified: T::Boolean, id: ::String, last_login_at: ::DateTime, updated_at: ::DateTime, whitelisted: T::Boolean, default_workspace_id: T.nilable(::String), github_handle: T.nilable(::String), photo_url: T.nilable(::String)).void }
      def initialize(admin: nil, confirmed: nil, created_at: nil, display_name: nil, email: nil, email_verified: nil, id: nil, last_login_at: nil, updated_at: nil, whitelisted: nil, default_workspace_id: nil, github_handle: nil, photo_url: nil)
        @admin = admin
        @confirmed = confirmed
        @created_at = created_at
        @display_name = display_name
        @email = email
        @email_verified = email_verified
        @id = id
        @last_login_at = last_login_at
        @updated_at = updated_at
        @whitelisted = whitelisted
        @default_workspace_id = default_workspace_id
        @github_handle = github_handle
        @photo_url = photo_url
      end
    end
  end
end
