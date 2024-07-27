# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A filter is a key-value pair that can be used to filter a list of requests.
    class Filter < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The key of the filter.
      field :key, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('key') } }
      # The operator of the filter.
      field :operator, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('operator') } }
      # The value of the filter.
      field :value, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('value') } }


      sig { params(key: ::String, operator: ::String, value: ::String).void }
      def initialize(key: nil, operator: nil, value: nil)
        @key = key
        @operator = operator
        @value = value
      end
    end
  end
end
