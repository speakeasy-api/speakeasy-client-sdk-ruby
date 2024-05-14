# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A speakeasy organization
    class Organization < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :account_type, ::SpeakeasyClientSDK::Shared::OrganizationAccountType, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::OrganizationAccountType, false) } }

      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('name') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('slug') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_type: ::SpeakeasyClientSDK::Shared::OrganizationAccountType, id: ::String, name: ::String, created_at: T.nilable(::DateTime), slug: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(account_type: nil, id: nil, name: nil, created_at: nil, slug: nil, updated_at: nil)
        @account_type = account_type
        @id = id
        @name = name
        @created_at = created_at
        @slug = slug
        @updated_at = updated_at
      end
    end
  end
end
