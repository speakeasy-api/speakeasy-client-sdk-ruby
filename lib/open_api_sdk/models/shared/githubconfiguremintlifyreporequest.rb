# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A request to configure a GitHub repository for mintlify
    class GithubConfigureMintlifyRepoRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The input OpenAPI document
      field :input, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('input') } }
      # The GitHub organization name
      field :org, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('org') } }
      # The overlays to apply
      field :overlays, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('overlays') } }
      # The GitHub repository name
      field :repo, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('repo') } }
      # The subdirectory (location of mint.json)
      field :subdirectory, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('subdirectory') } }


      sig { params(input: ::String, org: ::String, overlays: T::Array[::String], repo: ::String, subdirectory: T.nilable(::String)).void }
      def initialize(input: nil, org: nil, overlays: nil, repo: nil, subdirectory: nil)
        @input = input
        @org = org
        @overlays = overlays
        @repo = repo
        @subdirectory = subdirectory
      end
    end
  end
end
