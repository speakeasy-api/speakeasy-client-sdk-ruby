# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class SuggestOptsOld < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :suggestion_type, ::OpenApiSDK::Shared::SuggestionType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('suggestion_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::SuggestionType, false) } }

      field :diagnostics, T.nilable(T::Array[::OpenApiSDK::Shared::Diagnostic]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('diagnostics') } }


      sig { params(suggestion_type: ::OpenApiSDK::Shared::SuggestionType, diagnostics: T.nilable(T::Array[::OpenApiSDK::Shared::Diagnostic])).void }
      def initialize(suggestion_type: nil, diagnostics: nil)
        @suggestion_type = suggestion_type
        @diagnostics = diagnostics
      end
    end
  end
end
