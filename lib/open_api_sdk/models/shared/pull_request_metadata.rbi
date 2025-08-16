# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Shared::PullRequestMetadata
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Shared::PullRequestMetadata
  def status(); end
  def status=(str_); end
  def title(); end
  def title=(str_); end
  def created_at(); end
  def created_at=(str_); end
  def description(); end
  def description=(str_); end
  def head_branch(); end
  def head_branch=(str_); end
  def base_branch(); end
  def base_branch=(str_); end
  def can_merge(); end
  def can_merge=(str_); end
  def labels(); end
  def labels=(str_); end
  def requested_reviewers(); end
  def requested_reviewers=(str_); end
end