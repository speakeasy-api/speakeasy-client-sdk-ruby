require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class UnboundedRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An UnboundedRequest represents the HAR content capture by Speakeasy when logging a request.
			
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :har, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('har') }}
			field :har_size_bytes, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('har_size_bytes') }}
			field :request_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('request_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}

			sig{params(created_at: DateTime, har: String, har_size_bytes: Integer, request_id: String, workspace_id: String).void }
			def initialize(created_at: nil, har: nil, har_size_bytes: nil, request_id: nil, workspace_id: nil)
				@created_at=created_at
				@har=har
				@har_size_bytes=har_size_bytes
				@request_id=request_id
				@workspace_id=workspace_id
				
			end
		end
	end
end