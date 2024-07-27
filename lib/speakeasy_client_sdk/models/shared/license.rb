# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class License < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('identifier') } }


      sig { params(identifier: T.nilable(::String)).void }
      def initialize(identifier: nil)
        @identifier = identifier
      end
    end
  end
end
