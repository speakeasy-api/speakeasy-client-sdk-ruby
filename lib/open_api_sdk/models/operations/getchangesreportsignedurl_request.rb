# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetChangesReportSignedUrlRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The checksum of the document to retrieve the signed access url for.
      field :document_checksum, ::String, { 'path_param': { 'field_name': 'documentChecksum', 'style': 'simple', 'explode': false } }


      sig { params(document_checksum: ::String).void }
      def initialize(document_checksum: nil)
        @document_checksum = document_checksum
      end
    end
  end
end
