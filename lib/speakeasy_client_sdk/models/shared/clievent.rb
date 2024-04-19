# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class CliEvent < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Timestamp when the event was created in the database.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Unique identifier for each execution of the CLI.
      field :execution_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('execution_id') } }
      # Unique identifier for each event.
      field :id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('id') } }
      # Type of interaction.
      field :interaction_type, ::SpeakeasyClientSDK::Shared::InteractionType, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('interaction_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::InteractionType, false) } }
      # Timestamp when the event started, in local time.
      field :local_started_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('local_started_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Identifier of the Speakeasy API key.
      field :speakeasy_api_key_name, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('speakeasy_api_key_name') } }
      # Version of the Speakeasy CLI.
      field :speakeasy_version, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('speakeasy_version') } }
      # Indicates whether the event was successful.
      field :success, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('success') } }
      # Identifier of the workspace.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }
      # Remote commit ID.
      field :commit_head, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('commit_head') } }
      # Name of the CI environment.
      field :continuous_integration_environment, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('continuous_integration_environment') } }
      # Duration of the event in milliseconds.
      field :duration_ms, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('duration_ms') } }
      # Bump type of the lock file (calculated semver delta, or a custom change (manual release))
      field :generate_bump_type, T.nilable(::SpeakeasyClientSDK::Shared::GenerateBumpType), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_bump_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::GenerateBumpType, true) } }
      # Checksum of the configuration file (post generation)
      field :generate_config_post_checksum, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_post_checksum') } }
      # Rendered configuration file (post generation)
      field :generate_config_post_raw, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_post_raw') } }
      # The version of the customer's SDK that we just generated
      field :generate_config_post_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_post_version') } }
      # Checksum of the configuration file (prior to generation)
      field :generate_config_pre_checksum, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_pre_checksum') } }
      # Rendered configuration file (prior to generation)
      field :generate_config_pre_raw, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_pre_raw') } }
      # The version of the customer's SDK before we generated
      field :generate_config_pre_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_config_pre_version') } }
      # gen.lock ID (expected to be a uuid).
      field :generate_gen_lock_id, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_id') } }
      # Features post generation
      field :generate_gen_lock_post_features, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_post_features') } }
      # Blob digest of the Previous Generation
      field :generate_gen_lock_pre_blob_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_blob_digest') } }
      # Checksum of the Previous Rendered OpenAPI document (prior to generation, via gen lock)
      field :generate_gen_lock_pre_doc_checksum, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_doc_checksum') } }
      # info.Version of the Previous Rendered OpenAPI document (prior to generation, via gen lock)
      field :generate_gen_lock_pre_doc_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_doc_version') } }
      # Features prior to generation
      field :generate_gen_lock_pre_features, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_features') } }
      # Namespace name of the Previous Generation
      field :generate_gen_lock_pre_namespace_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_namespace_name') } }
      # Revision digest of the Previous Generation
      field :generate_gen_lock_pre_revision_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_revision_digest') } }
      # Artifact version for the Previous Generation
      field :generate_gen_lock_pre_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_gen_lock_pre_version') } }
      # Indicates whether tests were output.
      field :generate_output_tests, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_output_tests') } }
      # Indicates whether the target was considered published.
      field :generate_published, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_published') } }
      # Expected Repo URL, for use in documentation generation.
      field :generate_repo_url, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_repo_url') } }
      # The target of the event.
      field :generate_target, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_target') } }
      # The version of the target.
      field :generate_target_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_target_version') } }
      # Version of the generation logic used.
      field :generate_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('generate_version') } }
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
      # The checksum of the lint report.
      field :lint_report_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('lint_report_digest') } }
      # The number of errors in the lint report.
      field :lint_report_error_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('lint_report_error_count') } }
      # The number of info messages in the lint report.
      field :lint_report_info_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('lint_report_info_count') } }
      # The number of warnings in the lint report.
      field :lint_report_warning_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('lint_report_warning_count') } }
      # Timestamp when the event completed, in local time.
      field :local_completed_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('local_completed_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Checksum of the currently Rendered OpenAPI document.
      field :management_doc_checksum, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('management_doc_checksum') } }
      # Version taken from info.version field of the Rendered OpenAPI document.
      field :management_doc_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('management_doc_version') } }
      # The blob digest of the base source.
      field :openapi_diff_base_source_blob_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_base_source_blob_digest') } }
      # The namespace name of the base source.
      field :openapi_diff_base_source_namespace_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_base_source_namespace_name') } }
      # The revision digest of the base source.
      field :openapi_diff_base_source_revision_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_base_source_revision_digest') } }
      # The number of breaking changes in the openapi diff report.
      field :openapi_diff_breaking_changes_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_breaking_changes_count') } }
      # Bump type of the lock file (calculated semver delta, or a custom change (manual release))
      field :openapi_diff_bump_type, T.nilable(::SpeakeasyClientSDK::Shared::OpenapiDiffBumpType), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_bump_type'), 'decoder': Utils.enum_from_string(::SpeakeasyClientSDK::Shared::OpenapiDiffBumpType, true) } }
      # The checksum of the openapi diff report.
      field :openapi_diff_report_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('openapi_diff_report_digest') } }
      # Name of the published package.
      field :publish_package_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('publish_package_name') } }
      # Name of the registry where the package was published.
      field :publish_package_registry_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('publish_package_registry_name') } }
      # URL of the published package.
      field :publish_package_url, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('publish_package_url') } }
      # Version of the published package.
      field :publish_package_version, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('publish_package_version') } }
      # Full CLI command.
      field :raw_command, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('raw_command') } }
      # Label of the git repository.
      field :repo_label, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('repo_label') } }
      # The blob digest of the source.
      field :source_blob_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('source_blob_digest') } }
      # The namespace name of the source.
      field :source_namespace_name, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('source_namespace_name') } }
      # The revision digest of the source.
      field :source_revision_digest, T.nilable(::String), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('source_revision_digest') } }


      sig { params(created_at: ::DateTime, execution_id: ::String, id: ::String, interaction_type: ::SpeakeasyClientSDK::Shared::InteractionType, local_started_at: ::DateTime, speakeasy_api_key_name: ::String, speakeasy_version: ::String, success: T::Boolean, workspace_id: ::String, commit_head: T.nilable(::String), continuous_integration_environment: T.nilable(::String), duration_ms: T.nilable(::Integer), generate_bump_type: T.nilable(::SpeakeasyClientSDK::Shared::GenerateBumpType), generate_config_post_checksum: T.nilable(::String), generate_config_post_raw: T.nilable(::String), generate_config_post_version: T.nilable(::String), generate_config_pre_checksum: T.nilable(::String), generate_config_pre_raw: T.nilable(::String), generate_config_pre_version: T.nilable(::String), generate_gen_lock_id: T.nilable(::String), generate_gen_lock_post_features: T.nilable(::String), generate_gen_lock_pre_blob_digest: T.nilable(::String), generate_gen_lock_pre_doc_checksum: T.nilable(::String), generate_gen_lock_pre_doc_version: T.nilable(::String), generate_gen_lock_pre_features: T.nilable(::String), generate_gen_lock_pre_namespace_name: T.nilable(::String), generate_gen_lock_pre_revision_digest: T.nilable(::String), generate_gen_lock_pre_version: T.nilable(::String), generate_output_tests: T.nilable(T::Boolean), generate_published: T.nilable(T::Boolean), generate_repo_url: T.nilable(::String), generate_target: T.nilable(::String), generate_target_version: T.nilable(::String), generate_version: T.nilable(::String), gh_action_organization: T.nilable(::String), gh_action_repository: T.nilable(::String), gh_action_run_link: T.nilable(::String), gh_action_version: T.nilable(::String), git_relative_cwd: T.nilable(::String), git_remote_default_owner: T.nilable(::String), git_remote_default_repo: T.nilable(::String), git_user_email: T.nilable(::String), git_user_name: T.nilable(::String), hostname: T.nilable(::String), lint_report_digest: T.nilable(::String), lint_report_error_count: T.nilable(::Integer), lint_report_info_count: T.nilable(::Integer), lint_report_warning_count: T.nilable(::Integer), local_completed_at: T.nilable(::DateTime), management_doc_checksum: T.nilable(::String), management_doc_version: T.nilable(::String), openapi_diff_base_source_blob_digest: T.nilable(::String), openapi_diff_base_source_namespace_name: T.nilable(::String), openapi_diff_base_source_revision_digest: T.nilable(::String), openapi_diff_breaking_changes_count: T.nilable(::Integer), openapi_diff_bump_type: T.nilable(::SpeakeasyClientSDK::Shared::OpenapiDiffBumpType), openapi_diff_report_digest: T.nilable(::String), publish_package_name: T.nilable(::String), publish_package_registry_name: T.nilable(::String), publish_package_url: T.nilable(::String), publish_package_version: T.nilable(::String), raw_command: T.nilable(::String), repo_label: T.nilable(::String), source_blob_digest: T.nilable(::String), source_namespace_name: T.nilable(::String), source_revision_digest: T.nilable(::String)).void }
      def initialize(created_at: nil, execution_id: nil, id: nil, interaction_type: nil, local_started_at: nil, speakeasy_api_key_name: nil, speakeasy_version: nil, success: nil, workspace_id: nil, commit_head: nil, continuous_integration_environment: nil, duration_ms: nil, generate_bump_type: nil, generate_config_post_checksum: nil, generate_config_post_raw: nil, generate_config_post_version: nil, generate_config_pre_checksum: nil, generate_config_pre_raw: nil, generate_config_pre_version: nil, generate_gen_lock_id: nil, generate_gen_lock_post_features: nil, generate_gen_lock_pre_blob_digest: nil, generate_gen_lock_pre_doc_checksum: nil, generate_gen_lock_pre_doc_version: nil, generate_gen_lock_pre_features: nil, generate_gen_lock_pre_namespace_name: nil, generate_gen_lock_pre_revision_digest: nil, generate_gen_lock_pre_version: nil, generate_output_tests: nil, generate_published: nil, generate_repo_url: nil, generate_target: nil, generate_target_version: nil, generate_version: nil, gh_action_organization: nil, gh_action_repository: nil, gh_action_run_link: nil, gh_action_version: nil, git_relative_cwd: nil, git_remote_default_owner: nil, git_remote_default_repo: nil, git_user_email: nil, git_user_name: nil, hostname: nil, lint_report_digest: nil, lint_report_error_count: nil, lint_report_info_count: nil, lint_report_warning_count: nil, local_completed_at: nil, management_doc_checksum: nil, management_doc_version: nil, openapi_diff_base_source_blob_digest: nil, openapi_diff_base_source_namespace_name: nil, openapi_diff_base_source_revision_digest: nil, openapi_diff_breaking_changes_count: nil, openapi_diff_bump_type: nil, openapi_diff_report_digest: nil, publish_package_name: nil, publish_package_registry_name: nil, publish_package_url: nil, publish_package_version: nil, raw_command: nil, repo_label: nil, source_blob_digest: nil, source_namespace_name: nil, source_revision_digest: nil)
        @created_at = created_at
        @execution_id = execution_id
        @id = id
        @interaction_type = interaction_type
        @local_started_at = local_started_at
        @speakeasy_api_key_name = speakeasy_api_key_name
        @speakeasy_version = speakeasy_version
        @success = success
        @workspace_id = workspace_id
        @commit_head = commit_head
        @continuous_integration_environment = continuous_integration_environment
        @duration_ms = duration_ms
        @generate_bump_type = generate_bump_type
        @generate_config_post_checksum = generate_config_post_checksum
        @generate_config_post_raw = generate_config_post_raw
        @generate_config_post_version = generate_config_post_version
        @generate_config_pre_checksum = generate_config_pre_checksum
        @generate_config_pre_raw = generate_config_pre_raw
        @generate_config_pre_version = generate_config_pre_version
        @generate_gen_lock_id = generate_gen_lock_id
        @generate_gen_lock_post_features = generate_gen_lock_post_features
        @generate_gen_lock_pre_blob_digest = generate_gen_lock_pre_blob_digest
        @generate_gen_lock_pre_doc_checksum = generate_gen_lock_pre_doc_checksum
        @generate_gen_lock_pre_doc_version = generate_gen_lock_pre_doc_version
        @generate_gen_lock_pre_features = generate_gen_lock_pre_features
        @generate_gen_lock_pre_namespace_name = generate_gen_lock_pre_namespace_name
        @generate_gen_lock_pre_revision_digest = generate_gen_lock_pre_revision_digest
        @generate_gen_lock_pre_version = generate_gen_lock_pre_version
        @generate_output_tests = generate_output_tests
        @generate_published = generate_published
        @generate_repo_url = generate_repo_url
        @generate_target = generate_target
        @generate_target_version = generate_target_version
        @generate_version = generate_version
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
        @lint_report_digest = lint_report_digest
        @lint_report_error_count = lint_report_error_count
        @lint_report_info_count = lint_report_info_count
        @lint_report_warning_count = lint_report_warning_count
        @local_completed_at = local_completed_at
        @management_doc_checksum = management_doc_checksum
        @management_doc_version = management_doc_version
        @openapi_diff_base_source_blob_digest = openapi_diff_base_source_blob_digest
        @openapi_diff_base_source_namespace_name = openapi_diff_base_source_namespace_name
        @openapi_diff_base_source_revision_digest = openapi_diff_base_source_revision_digest
        @openapi_diff_breaking_changes_count = openapi_diff_breaking_changes_count
        @openapi_diff_bump_type = openapi_diff_bump_type
        @openapi_diff_report_digest = openapi_diff_report_digest
        @publish_package_name = publish_package_name
        @publish_package_registry_name = publish_package_registry_name
        @publish_package_url = publish_package_url
        @publish_package_version = publish_package_version
        @raw_command = raw_command
        @repo_label = repo_label
        @source_blob_digest = source_blob_digest
        @source_namespace_name = source_namespace_name
        @source_revision_digest = source_revision_digest
      end
    end
  end
end
