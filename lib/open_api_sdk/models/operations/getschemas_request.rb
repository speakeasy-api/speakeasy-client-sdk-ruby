# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetSchemasRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve schemas for.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api to delete metadata for.
      field :version_id, ::String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: ::String, version_id: ::String).void }
      def initialize(api_id: nil, version_id: nil)
        @api_id = api_id
        @version_id = version_id
      end
    end
  end
end
