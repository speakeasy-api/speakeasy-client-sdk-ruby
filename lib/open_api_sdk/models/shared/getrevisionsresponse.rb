# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class GetRevisionsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :items, T::Array[::OpenApiSDK::Shared::Revision], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('items') } }

      field :next_page_token, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('next_page_token') } }


      sig { params(items: T::Array[::OpenApiSDK::Shared::Revision], next_page_token: ::String).void }
      def initialize(items: nil, next_page_token: nil)
        @items = items
        @next_page_token = next_page_token
      end
    end
  end
end