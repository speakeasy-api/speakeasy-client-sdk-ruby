# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The report file to upload provided as a multipart/form-data file segment.
    class UploadReportRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :data, ::OpenApiSDK::Shared::Report, { 'multipart_form': { 'field_name': 'data', 'json': true } }

      field :file, ::OpenApiSDK::Operations::UploadReportFile, { 'multipart_form': { 'file': true } }


      sig { params(data: ::OpenApiSDK::Shared::Report, file: ::OpenApiSDK::Operations::UploadReportFile).void }
      def initialize(data: nil, file: nil)
        @data = data
        @file = file
      end
    end
  end
end
