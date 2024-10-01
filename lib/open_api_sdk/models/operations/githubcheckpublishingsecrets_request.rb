# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GithubCheckPublishingSecretsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :generate_gen_lock_id, ::String, { 'query_param': { 'field_name': 'generate_gen_lock_id', 'style': 'form', 'explode': true } }


      sig { params(generate_gen_lock_id: ::String).void }
      def initialize(generate_gen_lock_id: nil)
        @generate_gen_lock_id = generate_gen_lock_id
      end
    end
  end
end
