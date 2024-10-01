# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetTagsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :namespace_name, ::String, { 'path_param': { 'field_name': 'namespace_name', 'style': 'simple', 'explode': false } }


      sig { params(namespace_name: ::String).void }
      def initialize(namespace_name: nil)
        @namespace_name = namespace_name
      end
    end
  end
end
