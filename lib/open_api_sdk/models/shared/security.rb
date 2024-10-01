# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Security < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :api_key, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-api-key' } }

      field :bearer, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'bearer', 'field_name': 'Authorization' } }

      field :workspace_identifier, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-workspace-identifier' } }


      sig { params(api_key: T.nilable(::String), bearer: T.nilable(::String), workspace_identifier: T.nilable(::String)).void }
      def initialize(api_key: nil, bearer: nil, workspace_identifier: nil)
        @api_key = api_key
        @bearer = bearer
        @workspace_identifier = workspace_identifier
      end
    end
  end
end