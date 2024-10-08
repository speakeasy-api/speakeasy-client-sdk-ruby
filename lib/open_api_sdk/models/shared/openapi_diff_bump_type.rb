# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # OpenapiDiffBumpType - Bump type of the lock file (calculated semver delta, or a custom change (manual release))
    class OpenapiDiffBumpType < T::Enum
      enums do
        MAJOR = new('major')
        MINOR = new('minor')
        PATCH = new('patch')
        NONE = new('none')
      end
    end
  end
end
