# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class ApiKeyDetails < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :account_type, ::SpeakeasyClientSDK::Shared::AccountType, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::AccountType, false) } }

      field :feature_flags, T::Array[::SpeakeasyClientSDK::Shared::FeatureFlags], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('feature_flags') } }

      field :org_slug, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org_slug') } }

      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }

      field :workspace_slug, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_slug') } }

      field :generation_access_unlimited, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generation_access_unlimited') } }


      sig { params(account_type: ::SpeakeasyClientSDK::Shared::AccountType, feature_flags: T::Array[::SpeakeasyClientSDK::Shared::FeatureFlags], org_slug: ::String, workspace_id: ::String, workspace_slug: ::String, generation_access_unlimited: T.nilable(T::Boolean)).void }
      def initialize(account_type: nil, feature_flags: nil, org_slug: nil, workspace_id: nil, workspace_slug: nil, generation_access_unlimited: nil)
        @account_type = account_type
        @feature_flags = feature_flags
        @org_slug = org_slug
        @workspace_id = workspace_id
        @workspace_slug = workspace_slug
        @generation_access_unlimited = generation_access_unlimited
      end
    end
  end
end
