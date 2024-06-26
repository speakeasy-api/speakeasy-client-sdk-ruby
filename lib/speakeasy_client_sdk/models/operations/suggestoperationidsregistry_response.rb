# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class SuggestOperationIDsRegistryResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :suggested_operation_i_ds, T.nilable(::SpeakeasyClientSDK::Shared::SuggestedOperationIDs)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, suggested_operation_i_ds: T.nilable(::SpeakeasyClientSDK::Shared::SuggestedOperationIDs)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, suggested_operation_i_ds: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @suggested_operation_i_ds = suggested_operation_i_ds
      end
    end
  end
end
