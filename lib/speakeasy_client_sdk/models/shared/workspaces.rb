# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class Workspaces < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :account_type, T.nilable(::SpeakeasyClientSDK::Shared::AccessTokenAccountType), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::AccessTokenAccountType, true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('name') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_type: T.nilable(::SpeakeasyClientSDK::Shared::AccessTokenAccountType), id: T.nilable(::String), name: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(account_type: nil, id: nil, name: nil, updated_at: nil)
        @account_type = account_type
        @id = id
        @name = name
        @updated_at = updated_at
      end
    end
  end
end
