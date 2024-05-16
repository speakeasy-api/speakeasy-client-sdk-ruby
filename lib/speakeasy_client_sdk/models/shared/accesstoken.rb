# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # An AccessToken is a token that can be used to authenticate with the Speakeasy API.
    class AccessToken < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :access_token, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('access_token') } }

      field :claims, ::SpeakeasyClientSDK::Shared::Claims, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('claims') } }

      field :user, ::SpeakeasyClientSDK::Shared::AccessTokenUser, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('user') } }

      field :feature_flags, T.nilable(T::Array[::SpeakeasyClientSDK::Shared::FeatureFlag]), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('feature_flags') } }

      field :workspaces, T.nilable(T::Array[::SpeakeasyClientSDK::Shared::Workspaces]), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspaces') } }


      sig { params(access_token: ::String, claims: ::SpeakeasyClientSDK::Shared::Claims, user: ::SpeakeasyClientSDK::Shared::AccessTokenUser, feature_flags: T.nilable(T::Array[::SpeakeasyClientSDK::Shared::FeatureFlag]), workspaces: T.nilable(T::Array[::SpeakeasyClientSDK::Shared::Workspaces])).void }
      def initialize(access_token: nil, claims: nil, user: nil, feature_flags: nil, workspaces: nil)
        @access_token = access_token
        @claims = claims
        @user = user
        @feature_flags = feature_flags
        @workspaces = workspaces
      end
    end
  end
end
