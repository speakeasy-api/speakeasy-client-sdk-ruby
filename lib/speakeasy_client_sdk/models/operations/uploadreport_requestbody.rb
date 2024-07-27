# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  
    # The report file to upload provided as a multipart/form-data file segment.
    class UploadReportRequestBody < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :data, ::SpeakeasyClientSDK::Shared::Report, { 'multipart_form': { 'field_name': 'data', 'json': true } }

      field :file, ::SpeakeasyClientSDK::Operations::File, { 'multipart_form': { 'file': true } }


      sig { params(data: ::SpeakeasyClientSDK::Shared::Report, file: ::SpeakeasyClientSDK::Operations::File).void }
      def initialize(data: nil, file: nil)
        @data = data
        @file = file
      end
    end
  end
end
