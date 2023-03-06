require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class BoundedRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A BoundedRequest is a request that has been logged by the Speakeasy without the contents of the request.
			
			field :api_endpoint_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_endpoint_id') }}
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :customer_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('customer_id') }}
			field :latency, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('latency') }}
			field :method, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('method') }}
			field :path, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('path') }}
			field :request_finish_time, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('request_finish_time'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :request_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('request_id') }}
			field :request_start_time, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('request_start_time'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :status, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('status') }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}
			field :metadata, T.nilable(T::Array[RequestMetadata]), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('metadata') }}

			sig{params(api_endpoint_id: String, api_id: String, created_at: DateTime, customer_id: String, latency: Integer, method: String, path: String, request_finish_time: DateTime, request_id: String, request_start_time: DateTime, status: Integer, version_id: String, workspace_id: String, metadata: T.nilable(T::Array[RequestMetadata])).void }
			def initialize(api_endpoint_id: nil, api_id: nil, created_at: nil, customer_id: nil, latency: nil, method: nil, path: nil, request_finish_time: nil, request_id: nil, request_start_time: nil, status: nil, version_id: nil, workspace_id: nil, metadata: nil)
				@api_endpoint_id=api_endpoint_id
				@api_id=api_id
				@created_at=created_at
				@customer_id=customer_id
				@latency=latency
				@method=method
				@path=path
				@request_finish_time=request_finish_time
				@request_id=request_id
				@request_start_time=request_start_time
				@status=status
				@version_id=version_id
				@workspace_id=workspace_id
				@metadata=metadata
				
			end
		end
	end
end