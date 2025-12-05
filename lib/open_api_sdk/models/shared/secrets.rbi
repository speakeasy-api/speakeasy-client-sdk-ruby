# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Shared::Secrets
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Shared::Secrets
  def api_key_configured(); end
  def api_key_configured=(str_); end
  def publishing_secrets_configured(); end
  def publishing_secrets_configured=(str_); end
end