# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  

    class GetActionRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig


      field :org, ::String, { 'query_param': { 'field_name': 'org', 'style': 'form', 'explode': true } }

      field :repo, ::String, { 'query_param': { 'field_name': 'repo', 'style': 'form', 'explode': true } }
      # The targetName of the workflow target.
      field :target_name, T.nilable(::String), { 'query_param': { 'field_name': 'targetName', 'style': 'form', 'explode': true } }


      sig { params(org: ::String, repo: ::String, target_name: T.nilable(::String)).void }
      def initialize(org: nil, repo: nil, target_name: nil)
        @org = org
        @repo = repo
        @target_name = target_name
      end
    end
  end
end
