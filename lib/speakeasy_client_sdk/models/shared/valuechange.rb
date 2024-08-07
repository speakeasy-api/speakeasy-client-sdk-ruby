# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class ValueChange < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Represents the previous value of the element.
      field :from, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('From') } }
      # Represents the current value of the element.
      field :to, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('To') } }


      sig { params(from: ::String, to: ::String).void }
      def initialize(from: nil, to: nil)
        @from = from
        @to = to
      end
    end
  end
end
