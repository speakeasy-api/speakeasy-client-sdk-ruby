# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # GenerateBumpType - Bump type of the lock file (calculated semver delta, custom change (manual release), or prerelease/graduate)
    class GenerateBumpType < T::Enum
      enums do
        MAJOR = new('major')
        MINOR = new('minor')
        PATCH = new('patch')
        CUSTOM = new('custom')
        GRADUATE = new('graduate')
        PRERELEASE = new('prerelease')
        NONE = new('none')
      end
    end

  end
end
