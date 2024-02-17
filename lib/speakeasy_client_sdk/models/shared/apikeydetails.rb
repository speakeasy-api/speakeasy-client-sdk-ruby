# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class ApiKeyDetails < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :account_type, ::SpeakeasyClientSDK::Shared::AccountType, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::AccountType, false) } }

      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }

      field :generation_access_unlimited, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generation_access_unlimited') } }


      sig { params(account_type: ::SpeakeasyClientSDK::Shared::AccountType, workspace_id: ::String, generation_access_unlimited: T.nilable(T::Boolean)).void }
      def initialize(account_type: nil, workspace_id: nil, generation_access_unlimited: nil)
        @account_type = account_type
        @workspace_id = workspace_id
        @generation_access_unlimited = generation_access_unlimited
      end
    end
  end
end