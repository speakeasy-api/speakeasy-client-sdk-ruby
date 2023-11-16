# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/filters'
require_relative '../shared/embedaccesstokenresponse'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class GetEmbedAccessTokenRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The description of the embed access token.
      field :description, T.nilable(String), { 'query_param': { 'field_name': 'description', 'style': 'form', 'explode': true } }
      # The duration (in minutes) of the embed access token.
      field :duration, T.nilable(Integer), { 'query_param': { 'field_name': 'duration', 'style': 'form', 'explode': true } }
      # The filter to apply to the query.
      field :filters, T.nilable(Shared::Filters), { 'query_param': { 'field_name': 'filters', 'serialization': 'json' } }


      sig { params(description: T.nilable(String), duration: T.nilable(Integer), filters: T.nilable(Shared::Filters)).void }
      def initialize(description: nil, duration: nil, filters: nil)
        @description = description
        @duration = duration
        @filters = filters
      end
    end


    class GetEmbedAccessTokenResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :embed_access_token_response, T.nilable(Shared::EmbedAccessTokenResponse)
      # Default error response
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, embed_access_token_response: T.nilable(Shared::EmbedAccessTokenResponse), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, embed_access_token_response: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @embed_access_token_response = embed_access_token_response
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
