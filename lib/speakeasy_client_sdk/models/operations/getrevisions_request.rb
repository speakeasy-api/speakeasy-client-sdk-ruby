# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetRevisionsRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :namespace_name, ::String, { 'path_param': { 'field_name': 'namespace_name', 'style': 'simple', 'explode': false } }
      # Token to retrieve the next page of results
      field :next_page_token, T.nilable(::String), { 'query_param': { 'field_name': 'next_page_token', 'style': 'form', 'explode': true } }


      sig { params(namespace_name: ::String, next_page_token: T.nilable(::String)).void }
      def initialize(namespace_name: nil, next_page_token: nil)
        @namespace_name = namespace_name
        @next_page_token = next_page_token
      end
    end
  end
end
