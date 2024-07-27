# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # V2 descriptor
    class V2Descriptor < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Annotations
      field :annotations, T.nilable(::SpeakeasyClientSDK::Shared::Annotations), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('annotations') } }
      # Digest
      field :digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('digest') } }
      # Media type
      field :media_type, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('mediaType') } }
      # Size
      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('size') } }


      sig { params(annotations: T.nilable(::SpeakeasyClientSDK::Shared::Annotations), digest: T.nilable(::String), media_type: T.nilable(::String), size: T.nilable(::Integer)).void }
      def initialize(annotations: nil, digest: nil, media_type: nil, size: nil)
        @annotations = annotations
        @digest = digest
        @media_type = media_type
        @size = size
      end
    end
  end
end
