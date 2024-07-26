# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetLintingReportSignedUrlResponse < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :signed_access, T.nilable(::SpeakeasyClientSDK::Operations::GetLintingReportSignedUrlSignedAccess)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, signed_access: T.nilable(::SpeakeasyClientSDK::Operations::GetLintingReportSignedUrlSignedAccess)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, signed_access: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @signed_access = signed_access
      end
    end
  end
end
