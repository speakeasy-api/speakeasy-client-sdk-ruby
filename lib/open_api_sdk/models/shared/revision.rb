# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Revision < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :digest, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('digest') } }
      # Format {namespace_id}/{revision_digest}
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :namespace_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('namespace_name') } }

      field :tags, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tags') } }

      field :updated_at, ::DateTime, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(false) } }


      sig { params(created_at: ::DateTime, digest: ::String, id: ::String, namespace_name: ::String, tags: T::Array[::String], updated_at: ::DateTime).void }
      def initialize(created_at: nil, digest: nil, id: nil, namespace_name: nil, tags: nil, updated_at: nil)
        @created_at = created_at
        @digest = digest
        @id = id
        @namespace_name = namespace_name
        @tags = tags
        @updated_at = updated_at
      end
    end
  end
end
