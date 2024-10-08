# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # An UnboundedRequest represents the HAR content capture by Speakeasy when logging a request.
    class UnboundedRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Creation timestamp.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The HAR content of the request.
      field :har, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('har') } }
      # The size of the HAR content in bytes.
      field :har_size_bytes, ::Integer, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('har_size_bytes') } }
      # The ID of this request.
      field :request_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('request_id') } }
      # The workspace ID this request was made to.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('workspace_id') } }


      sig { params(created_at: ::DateTime, har: ::String, har_size_bytes: ::Integer, request_id: ::String, workspace_id: ::String).void }
      def initialize(created_at: nil, har: nil, har_size_bytes: nil, request_id: nil, workspace_id: nil)
        @created_at = created_at
        @har = har
        @har_size_bytes = har_size_bytes
        @request_id = request_id
        @workspace_id = workspace_id
      end
    end
  end
end
