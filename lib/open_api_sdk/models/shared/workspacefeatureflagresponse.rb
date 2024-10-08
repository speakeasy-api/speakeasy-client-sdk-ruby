# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Workspace feature flag response
    class WorkspaceFeatureFlagResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :feature_flags, T.nilable(T::Array[::OpenApiSDK::Shared::FeatureFlag]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('feature_flags') } }


      sig { params(feature_flags: T.nilable(T::Array[::OpenApiSDK::Shared::FeatureFlag])).void }
      def initialize(feature_flags: nil)
        @feature_flags = feature_flags
      end
    end
  end
end
