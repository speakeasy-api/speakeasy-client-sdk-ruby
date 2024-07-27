# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class SuggestedOperationIDs < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :operation_ids, T::Hash[Symbol, T::Array[::String]], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('operation_ids') } }


      sig { params(operation_ids: T::Hash[Symbol, T::Array[::String]]).void }
      def initialize(operation_ids: nil)
        @operation_ids = operation_ids
      end
    end
  end
end
