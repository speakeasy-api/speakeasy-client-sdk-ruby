# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The schema file to upload provided as a multipart/form-data file segment.
    class SuggestOpenAPIRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :schema, ::OpenApiSDK::Operations::Schema, { 'multipart_form': { 'file': true } }

      field :opts, T.nilable(::OpenApiSDK::Shared::SuggestOptsOld), { 'multipart_form': { 'field_name': 'opts', 'json': true } }


      sig { params(schema: ::OpenApiSDK::Operations::Schema, opts: T.nilable(::OpenApiSDK::Shared::SuggestOptsOld)).void }
      def initialize(schema: nil, opts: nil)
        @schema = schema
        @opts = opts
      end
    end
  end
end
