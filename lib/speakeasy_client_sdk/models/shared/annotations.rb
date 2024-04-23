# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # Annotations
    class Annotations < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The authors of the image
      field :org_opencontainers_image_authors, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.authors') } }
      # The time the image was created
      field :org_opencontainers_image_created, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.created') } }
      # Human-readable description of the software packaged in the image
      field :org_opencontainers_image_description, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.description') } }
      # The documentation URL of the image
      field :org_opencontainers_image_documentation, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.documentation') } }

      field :org_opencontainers_image_licenses, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.licenses') } }
      # Name of the reference for a target
      field :org_opencontainers_image_ref_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.ref.name') } }
      # Source control revision identifier
      field :org_opencontainers_image_revision, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.revision') } }
      # The URL to get source code for building the image
      field :org_opencontainers_image_source, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.source') } }
      # Human-readable title of the image
      field :org_opencontainers_image_title, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.title') } }
      # The URL of the image
      field :org_opencontainers_image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.url') } }
      # Name of the distributing entity, organization or individual.
      field :org_opencontainers_image_vendor, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.vendor') } }
      # The version of the packaged software
      field :org_opencontainers_image_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org.opencontainers.image.version') } }


      sig { params(org_opencontainers_image_authors: T.nilable(::String), org_opencontainers_image_created: T.nilable(::String), org_opencontainers_image_description: T.nilable(::String), org_opencontainers_image_documentation: T.nilable(::String), org_opencontainers_image_licenses: T.nilable(::String), org_opencontainers_image_ref_name: T.nilable(::String), org_opencontainers_image_revision: T.nilable(::String), org_opencontainers_image_source: T.nilable(::String), org_opencontainers_image_title: T.nilable(::String), org_opencontainers_image_url: T.nilable(::String), org_opencontainers_image_vendor: T.nilable(::String), org_opencontainers_image_version: T.nilable(::String)).void }
      def initialize(org_opencontainers_image_authors: nil, org_opencontainers_image_created: nil, org_opencontainers_image_description: nil, org_opencontainers_image_documentation: nil, org_opencontainers_image_licenses: nil, org_opencontainers_image_ref_name: nil, org_opencontainers_image_revision: nil, org_opencontainers_image_source: nil, org_opencontainers_image_title: nil, org_opencontainers_image_url: nil, org_opencontainers_image_vendor: nil, org_opencontainers_image_version: nil)
        @org_opencontainers_image_authors = org_opencontainers_image_authors
        @org_opencontainers_image_created = org_opencontainers_image_created
        @org_opencontainers_image_description = org_opencontainers_image_description
        @org_opencontainers_image_documentation = org_opencontainers_image_documentation
        @org_opencontainers_image_licenses = org_opencontainers_image_licenses
        @org_opencontainers_image_ref_name = org_opencontainers_image_ref_name
        @org_opencontainers_image_revision = org_opencontainers_image_revision
        @org_opencontainers_image_source = org_opencontainers_image_source
        @org_opencontainers_image_title = org_opencontainers_image_title
        @org_opencontainers_image_url = org_opencontainers_image_url
        @org_opencontainers_image_vendor = org_opencontainers_image_vendor
        @org_opencontainers_image_version = org_opencontainers_image_version
      end
    end
  end
end
