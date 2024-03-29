# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class TargetSDK < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # gen.lock ID (expected to be a uuid). The same as `id`. A unique identifier for the target.
      field :generate_gen_lock_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_id') } }
      # eg `typescript`, `terraform`, `python`
      field :generate_target, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_target') } }
      # Unique identifier of the target the same as `generate_gen_lock_id`
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # Timestamp when the event was created in the database.
      field :last_event_created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('last_event_created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Unique identifier of the last event for the target
      field :last_event_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('last_event_id') } }
      # Type of interaction.
      field :last_event_interaction_type, ::SpeakeasyClientSDK::Shared::InteractionType, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('last_event_interaction_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::InteractionType, false) } }
      # Remote commit ID.
      field :commit_head, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('commit_head') } }
      # Name of the CI environment.
      field :continuous_integration_environment, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('continuous_integration_environment') } }
      # Version of the generated target (post generation)
      field :generate_config_post_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_post_version') } }
      # Features prior to generation
      field :generate_gen_lock_pre_features, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_features') } }
      # Artifact version for the Previous Generation
      field :generate_gen_lock_pre_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_version') } }
      # Indicates whether the target was considered published.
      field :generate_published, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_published') } }
      # The name of the target as defined by the user.
      field :generate_target_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_target_name') } }
      # The version of the Speakeasy generator for this target eg v2 of the typescript generator.
      field :generate_target_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_target_version') } }
      # GitHub organization of the action.
      field :gh_action_organization, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gh_action_organization') } }
      # GitHub repository of the action.
      field :gh_action_repository, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gh_action_repository') } }
      # Link to the GitHub action run.
      field :gh_action_run_link, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gh_action_run_link') } }
      # Version of the GitHub action.
      field :gh_action_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gh_action_version') } }
      # Current working directory relative to the git root.
      field :git_relative_cwd, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('git_relative_cwd') } }
      # Default owner for git remote.
      field :git_remote_default_owner, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('git_remote_default_owner') } }
      # Default repository name for git remote.
      field :git_remote_default_repo, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('git_remote_default_repo') } }
      # User email from git configuration.
      field :git_user_email, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('git_user_email') } }
      # User's name from git configuration. (not GitHub username)
      field :git_user_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('git_user_name') } }
      # Remote hostname.
      field :hostname, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('hostname') } }
      # Label of the git repository.
      field :repo_label, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('repo_label') } }
      # Indicates whether the event was successful.
      field :success, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('success') } }


      sig { params(generate_gen_lock_id: ::String, generate_target: ::String, id: ::String, last_event_created_at: ::DateTime, last_event_id: ::String, last_event_interaction_type: ::SpeakeasyClientSDK::Shared::InteractionType, commit_head: T.nilable(::String), continuous_integration_environment: T.nilable(::String), generate_config_post_version: T.nilable(::String), generate_gen_lock_pre_features: T.nilable(::String), generate_gen_lock_pre_version: T.nilable(::String), generate_published: T.nilable(T::Boolean), generate_target_name: T.nilable(::String), generate_target_version: T.nilable(::String), gh_action_organization: T.nilable(::String), gh_action_repository: T.nilable(::String), gh_action_run_link: T.nilable(::String), gh_action_version: T.nilable(::String), git_relative_cwd: T.nilable(::String), git_remote_default_owner: T.nilable(::String), git_remote_default_repo: T.nilable(::String), git_user_email: T.nilable(::String), git_user_name: T.nilable(::String), hostname: T.nilable(::String), repo_label: T.nilable(::String), success: T.nilable(T::Boolean)).void }
      def initialize(generate_gen_lock_id: nil, generate_target: nil, id: nil, last_event_created_at: nil, last_event_id: nil, last_event_interaction_type: nil, commit_head: nil, continuous_integration_environment: nil, generate_config_post_version: nil, generate_gen_lock_pre_features: nil, generate_gen_lock_pre_version: nil, generate_published: nil, generate_target_name: nil, generate_target_version: nil, gh_action_organization: nil, gh_action_repository: nil, gh_action_run_link: nil, gh_action_version: nil, git_relative_cwd: nil, git_remote_default_owner: nil, git_remote_default_repo: nil, git_user_email: nil, git_user_name: nil, hostname: nil, repo_label: nil, success: nil)
        @generate_gen_lock_id = generate_gen_lock_id
        @generate_target = generate_target
        @id = id
        @last_event_created_at = last_event_created_at
        @last_event_id = last_event_id
        @last_event_interaction_type = last_event_interaction_type
        @commit_head = commit_head
        @continuous_integration_environment = continuous_integration_environment
        @generate_config_post_version = generate_config_post_version
        @generate_gen_lock_pre_features = generate_gen_lock_pre_features
        @generate_gen_lock_pre_version = generate_gen_lock_pre_version
        @generate_published = generate_published
        @generate_target_name = generate_target_name
        @generate_target_version = generate_target_version
        @gh_action_organization = gh_action_organization
        @gh_action_repository = gh_action_repository
        @gh_action_run_link = gh_action_run_link
        @gh_action_version = gh_action_version
        @git_relative_cwd = git_relative_cwd
        @git_remote_default_owner = git_remote_default_owner
        @git_remote_default_repo = git_remote_default_repo
        @git_user_email = git_user_email
        @git_user_name = git_user_name
        @hostname = hostname
        @repo_label = repo_label
        @success = success
      end
    end
  end
end
