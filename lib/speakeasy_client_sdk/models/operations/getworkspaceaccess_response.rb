# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetWorkspaceAccessResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :access_details, T.nilable(::SpeakeasyClientSDK::Shared::AccessDetails)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, access_details: T.nilable(::SpeakeasyClientSDK::Shared::AccessDetails)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, access_details: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @access_details = access_details
      end
    end
  end
end
