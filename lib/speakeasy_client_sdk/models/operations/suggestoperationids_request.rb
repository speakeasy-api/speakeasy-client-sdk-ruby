# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class SuggestOperationIDsRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The schema file to upload provided as a multipart/form-data file segment.
      field :request_body, ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody, { 'request': { 'media_type': 'multipart/form-data' } }

      field :x_session_id, ::String, { 'header': { 'field_name': 'x-session-id', 'style': 'simple', 'explode': false } }
      # Max number of suggestions to request
      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }


      sig { params(request_body: ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody, x_session_id: ::String, limit: T.nilable(::Float)).void }
      def initialize(request_body: nil, x_session_id: nil, limit: nil)
        @request_body = request_body
        @x_session_id = x_session_id
        @limit = limit
      end
    end
  end
end
