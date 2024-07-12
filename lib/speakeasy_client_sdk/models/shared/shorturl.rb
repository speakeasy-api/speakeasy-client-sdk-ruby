# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class ShortURL < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :full_url, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('full_url') } }

      field :short_url, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('short_url') } }


      sig { params(full_url: ::String, short_url: ::String).void }
      def initialize(full_url: nil, short_url: nil)
        @full_url = full_url
        @short_url = short_url
      end
    end
  end
end
