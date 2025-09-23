# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Errors::Error
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Errors::Error
  def message(); end
  def message=(str_); end
  def status_code(); end
  def status_code=(str_); end
end