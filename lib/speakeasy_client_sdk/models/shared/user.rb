# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class User < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :admin, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('admin') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('display_name') } }

      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('email') } }

      field :email_verified, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('email_verified') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }


      sig { params(admin: T.nilable(T::Boolean), created_at: T.nilable(::DateTime), display_name: T.nilable(::String), email: T.nilable(::String), email_verified: T.nilable(T::Boolean), id: T.nilable(::String)).void }
      def initialize(admin: nil, created_at: nil, display_name: nil, email: nil, email_verified: nil, id: nil)
        @admin = admin
        @created_at = created_at
        @display_name = display_name
        @email = email
        @email_verified = email_verified
        @id = id
      end
    end
  end
end
