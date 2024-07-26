# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetRequestFromEventLogRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the request to retrieve.
      field :request_id, ::String, { 'path_param': { 'field_name': 'requestID', 'style': 'simple', 'explode': false } }


      sig { params(request_id: ::String).void }
      def initialize(request_id: nil)
        @request_id = request_id
      end
    end
  end
end
