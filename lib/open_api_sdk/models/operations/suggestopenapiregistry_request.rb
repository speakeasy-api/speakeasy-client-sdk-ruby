# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class SuggestOpenAPIRegistryRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :namespace_name, ::String, { 'path_param': { 'field_name': 'namespace_name', 'style': 'simple', 'explode': false } }
      # Tag or digest
      field :revision_reference, ::String, { 'path_param': { 'field_name': 'revision_reference', 'style': 'simple', 'explode': false } }

      field :x_session_id, ::String, { 'header': { 'field_name': 'x-session-id', 'style': 'simple', 'explode': false } }
      # Suggest options
      field :suggest_request_body, T.nilable(::OpenApiSDK::Shared::SuggestRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(namespace_name: ::String, revision_reference: ::String, x_session_id: ::String, suggest_request_body: T.nilable(::OpenApiSDK::Shared::SuggestRequestBody)).void }
      def initialize(namespace_name: nil, revision_reference: nil, x_session_id: nil, suggest_request_body: nil)
        @namespace_name = namespace_name
        @revision_reference = revision_reference
        @x_session_id = x_session_id
        @suggest_request_body = suggest_request_body
      end
    end
  end
end
