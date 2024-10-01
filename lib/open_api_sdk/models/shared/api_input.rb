# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # An Api is representation of a API (a collection of API Endpoints) within the Speakeasy Platform.
    class ApiInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of this Api. This is a human-readable name (subject to change).
      field :api_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('api_id') } }
      # A detailed description of the Api.
      field :description, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The version ID of this Api. This is semantic version identifier.
      field :version_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version_id') } }
      # A set of values associated with a meta_data key. This field is only set on get requests.
      field :meta_data, T.nilable(T::Hash[Symbol, T::Array[::String]]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('meta_data') } }


      sig { params(api_id: ::String, description: ::String, version_id: ::String, meta_data: T.nilable(T::Hash[Symbol, T::Array[::String]])).void }
      def initialize(api_id: nil, description: nil, version_id: nil, meta_data: nil)
        @api_id = api_id
        @description = description
        @version_id = version_id
        @meta_data = meta_data
      end
    end
  end
end
