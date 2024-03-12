# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class AccessDetails < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :generation_allowed, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generation_allowed') } }

      field :message, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('message') } }

      field :level, T.nilable(::SpeakeasyClientSDK::Shared::Level), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('level'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::Level, true) } }


      sig { params(generation_allowed: T::Boolean, message: ::String, level: T.nilable(::SpeakeasyClientSDK::Shared::Level)).void }
      def initialize(generation_allowed: nil, message: nil, level: nil)
        @generation_allowed = generation_allowed
        @message = message
        @level = level
      end
    end
  end
end
