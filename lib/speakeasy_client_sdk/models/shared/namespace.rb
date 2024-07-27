# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A namespace contains many revisions.
    class Namespace < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # {organization_slug}/{workspace_slug}/{namespace_name}
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # A human-readable name for the namespace.
      field :name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('name') } }

      field :updated_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(false) } }


      sig { params(created_at: ::DateTime, id: ::String, name: ::String, updated_at: ::DateTime).void }
      def initialize(created_at: nil, id: nil, name: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @name = name
        @updated_at = updated_at
      end
    end
  end
end
