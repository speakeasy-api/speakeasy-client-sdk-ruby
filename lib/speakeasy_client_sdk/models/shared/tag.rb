# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class Tag < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Format {namespace_id}/{tag}
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # Human readable tag name
      field :name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('name') } }

      field :namespace_name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('namespace_name') } }

      field :revision_digest, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('revision_digest') } }


      sig { params(id: ::String, name: ::String, namespace_name: ::String, revision_digest: ::String).void }
      def initialize(id: nil, name: nil, namespace_name: nil, revision_digest: nil)
        @id = id
        @name = name
        @namespace_name = namespace_name
        @revision_digest = revision_digest
      end
    end
  end
end
