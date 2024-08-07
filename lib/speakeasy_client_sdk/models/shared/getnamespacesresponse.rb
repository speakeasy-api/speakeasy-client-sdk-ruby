# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class GetNamespacesResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :items, T::Array[::SpeakeasyClientSDK::Shared::Namespace], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('items') } }


      sig { params(items: T::Array[::SpeakeasyClientSDK::Shared::Namespace]).void }
      def initialize(items: nil)
        @items = items
      end
    end
  end
end
