# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Request body of tags to add to a revision
    class AddTags < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # revision digest to add tags too sha256:...
      field :revision_digest, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('revision_digest') } }
      # string tags to add to the revision
      field :tags, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tags') } }


      sig { params(revision_digest: ::String, tags: T::Array[::String]).void }
      def initialize(revision_digest: nil, tags: nil)
        @revision_digest = revision_digest
        @tags = tags
      end
    end
  end
end
