# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A request to store publishing secrets for a github target
    class GithubStorePublishingSecretsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The generation lock ID
      field :generate_gen_lock_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('generate_gen_lock_id') } }
      # A map of secrets to store in the GitHub target
      field :secrets, T.nilable(T::Hash[Symbol, ::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('secrets') } }


      sig { params(generate_gen_lock_id: ::String, secrets: T.nilable(T::Hash[Symbol, ::String])).void }
      def initialize(generate_gen_lock_id: nil, secrets: nil)
        @generate_gen_lock_id = generate_gen_lock_id
        @secrets = secrets
      end
    end
  end
end
