# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Shared::Manifest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Shared::Manifest
  def schema_version(); end
  def schema_version=(str_); end
  def media_type(); end
  def media_type=(str_); end
  def artifact_type(); end
  def artifact_type=(str_); end
  def annotations(); end
  def annotations=(str_); end
  def layers(); end
  def layers=(str_); end
end