# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class Security < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :api_key, ::String, { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-api-key' } }


      sig { params(api_key: ::String).void }
      def initialize(api_key: nil)
        @api_key = api_key
      end
    end
  end
end