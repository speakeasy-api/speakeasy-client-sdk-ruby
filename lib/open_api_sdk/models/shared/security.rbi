# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Shared::Security
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Shared::Security
  def api_key(); end
  def api_key=(str_); end
  def workspace_identifier(); end
  def workspace_identifier=(str_); end
  def bearer(); end
  def bearer=(str_); end
end