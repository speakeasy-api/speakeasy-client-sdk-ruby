# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/api'
require_relative '../shared/error'

module SpeakeasyClientSDK
  module Operations

    class UpsertApiRequest < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # A JSON representation of the Api to upsert
      field :api, Shared::ApiInput, { 'request': { 'media_type': 'application/json' } }
      # The ID of the Api to upsert.
      field :api_id, String, { 'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false } }


      sig { params(api: Shared::ApiInput, api_id: String).void }
      def initialize(api: nil, api_id: nil)
        @api = api
        @api_id = api_id
      end
    end


    class UpsertApiResponse < SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :api, T.nilable(Shared::Api)
      # Default error response
      field :error, T.nilable(Shared::Error)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, api: T.nilable(Shared::Api), error: T.nilable(Shared::Error)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, api: nil, error: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @api = api
        @error = error
      end
    end
  end
end
