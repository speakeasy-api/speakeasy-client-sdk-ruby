# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  
    # OK
    class GetLintingReportSignedUrlSignedAccess < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :url, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('url') } }


      sig { params(url: ::String).void }
      def initialize(url: nil)
        @url = url
      end
    end
  end
end
