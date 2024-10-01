# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A request to trigger an action on a GitHub target
    class GithubTriggerActionRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The generation lock ID
      field :gen_lock_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('gen_lock_id') } }
      # The GitHub organization name
      field :org, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('org') } }
      # The GitHub repository name
      field :repo_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('repo_name') } }
      # Force an SDK generation
      field :force, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('force') } }
      # A version to override the SDK too in workflow dispatch
      field :set_version, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('set_version') } }
      # The target name for the action
      field :target_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('target_name') } }


      sig { params(gen_lock_id: ::String, org: ::String, repo_name: ::String, force: T.nilable(T::Boolean), set_version: T.nilable(::String), target_name: T.nilable(::String)).void }
      def initialize(gen_lock_id: nil, org: nil, repo_name: nil, force: nil, set_version: nil, target_name: nil)
        @gen_lock_id = gen_lock_id
        @org = org
        @repo_name = repo_name
        @force = force
        @set_version = set_version
        @target_name = target_name
      end
    end
  end
end
