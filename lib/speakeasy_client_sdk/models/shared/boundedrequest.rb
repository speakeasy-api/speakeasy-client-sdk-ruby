# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  
    # A BoundedRequest is a request that has been logged by the Speakeasy without the contents of the request.
    class BoundedRequest < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the ApiEndpoint this request was made to.
      field :api_endpoint_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('api_endpoint_id') } }
      # The ID of the Api this request was made to.
      field :api_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('api_id') } }
      # Creation timestamp.
      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The ID of the customer that made this request.
      field :customer_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('customer_id') } }
      # The latency of the request.
      field :latency, ::Integer, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('latency') } }
      # HTTP verb.
      field :method, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('method') } }
      # The path of the request.
      field :path, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('path') } }
      # The time the request finished.
      field :request_finish_time, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('request_finish_time'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The ID of this request.
      field :request_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('request_id') } }
      # The time the request was made.
      field :request_start_time, ::DateTime, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('request_start_time'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The status code of the request.
      field :status, ::Integer, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('status') } }
      # The version ID of the Api this request was made to.
      field :version_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('version_id') } }
      # The workspace ID this request was made to.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspace_id') } }
      # Metadata associated with this request
      field :metadata, T.nilable(T::Array[::SpeakeasyClientSDK::Shared::RequestMetadata]), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('metadata') } }


      sig { params(api_endpoint_id: ::String, api_id: ::String, created_at: ::DateTime, customer_id: ::String, latency: ::Integer, method: ::String, path: ::String, request_finish_time: ::DateTime, request_id: ::String, request_start_time: ::DateTime, status: ::Integer, version_id: ::String, workspace_id: ::String, metadata: T.nilable(T::Array[::SpeakeasyClientSDK::Shared::RequestMetadata])).void }
      def initialize(api_endpoint_id: nil, api_id: nil, created_at: nil, customer_id: nil, latency: nil, method: nil, path: nil, request_finish_time: nil, request_id: nil, request_start_time: nil, status: nil, version_id: nil, workspace_id: nil, metadata: nil)
        @api_endpoint_id = api_endpoint_id
        @api_id = api_id
        @created_at = created_at
        @customer_id = customer_id
        @latency = latency
        @method = method
        @path = path
        @request_finish_time = request_finish_time
        @request_id = request_id
        @request_start_time = request_start_time
        @status = status
        @version_id = version_id
        @workspace_id = workspace_id
        @metadata = metadata
      end
    end
  end
end
