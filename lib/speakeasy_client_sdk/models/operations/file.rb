# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class File < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :content, ::String, { 'multipart_form': { 'content': true } }

      field :file_name, ::String, { 'multipart_form': { 'field_name': 'file' } }


      sig { params(content: ::String, file_name: ::String).void }
      def initialize(content: nil, file_name: nil)
        @content = content
        @file_name = file_name
      end
    end
  end
end
