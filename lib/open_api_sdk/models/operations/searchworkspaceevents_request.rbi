# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::SearchWorkspaceEventsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::SearchWorkspaceEventsRequest
  def workspace_id(); end
  def workspace_id=(str_); end
  def source_revision_digest(); end
  def source_revision_digest=(str_); end
  def lint_report_digest(); end
  def lint_report_digest=(str_); end
  def openapi_diff_report_digest(); end
  def openapi_diff_report_digest=(str_); end
  def interaction_type(); end
  def interaction_type=(str_); end
  def generate_gen_lock_id(); end
  def generate_gen_lock_id=(str_); end
  def execution_id(); end
  def execution_id=(str_); end
  def success(); end
  def success=(str_); end
  def limit(); end
  def limit=(str_); end
end