# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetApiEndpointRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the ApiEndpoint to retrieve.
      field :api_endpoint_id, ::String, { 'path_param': { 'field_name': 'apiEndpointID', 'style': 'simple', 'explode': false } }
      # The ID of the Api the ApiEndpoint belongs to.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }
      # The version ID of the Api the ApiEndpoint belongs to.
      field :version_id, ::String, { 'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false } }


      sig { params(api_endpoint_id: ::String, api_id: ::String, version_id: ::String).void }
      def initialize(api_endpoint_id: nil, api_id: nil, version_id: nil)
        @api_endpoint_id = api_endpoint_id
        @api_id = api_id
        @version_id = version_id
      end
    end
  end
end
