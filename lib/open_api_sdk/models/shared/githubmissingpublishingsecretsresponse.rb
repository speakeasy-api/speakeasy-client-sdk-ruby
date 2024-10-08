# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A valid response containing MISSING publishing secret keys for a github target
    class GithubMissingPublishingSecretsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :missing_secrets, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('missing_secrets') } }


      sig { params(missing_secrets: T.nilable(T::Array[::String])).void }
      def initialize(missing_secrets: nil)
        @missing_secrets = missing_secrets
      end
    end
  end
end
