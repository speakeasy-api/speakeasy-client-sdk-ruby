# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class UpsertApiRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # A JSON representation of the Api to upsert
      field :api, ::SpeakeasyClientSDK::Shared::ApiInput, { 'request': { 'media_type': 'application/json' } }
      # The ID of the Api to upsert.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }


      sig { params(api: ::SpeakeasyClientSDK::Shared::ApiInput, api_id: ::String).void }
      def initialize(api: nil, api_id: nil)
        @api = api
        @api_id = api_id
      end
    end
  end
end