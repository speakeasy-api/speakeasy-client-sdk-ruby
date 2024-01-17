# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module SpeakeasyClientSDK
  module Shared

    class GenerateOpenApiSpecDiff < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :current_schema, String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('current_schema') } }

      field :new_schema, String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('new_schema') } }


      sig { params(current_schema: String, new_schema: String).void }
      def initialize(current_schema: nil, new_schema: nil)
        @current_schema = current_schema
        @new_schema = new_schema
      end
    end
  end
end
