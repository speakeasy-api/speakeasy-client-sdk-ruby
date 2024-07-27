# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetAllApiEndpointsRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the Api to retrieve ApiEndpoints for.
      field :api_id, ::String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }


      sig { params(api_id: ::String).void }
      def initialize(api_id: nil)
        @api_id = api_id
      end
    end
  end
end
