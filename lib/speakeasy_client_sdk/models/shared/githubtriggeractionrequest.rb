# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A request to trigger an action on a GitHub target
    class GithubTriggerActionRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The generation lock ID
      field :gen_lock_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gen_lock_id') } }
      # The GitHub organization name
      field :org, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('org') } }
      # The GitHub repository name
      field :repo_name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('repo_name') } }
      # The target name for the action
      field :target_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('target_name') } }


      sig { params(gen_lock_id: ::String, org: ::String, repo_name: ::String, target_name: T.nilable(::String)).void }
      def initialize(gen_lock_id: nil, org: nil, repo_name: nil, target_name: nil)
        @gen_lock_id = gen_lock_id
        @org = org
        @repo_name = repo_name
        @target_name = target_name
      end
    end
  end
end