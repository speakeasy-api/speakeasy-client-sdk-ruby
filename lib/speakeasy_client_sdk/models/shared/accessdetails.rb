# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class AccessDetails < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :generation_allowed, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generation_allowed') } }


      sig { params(generation_allowed: T::Boolean).void }
      def initialize(generation_allowed: nil)
        @generation_allowed = generation_allowed
      end
    end
  end
end