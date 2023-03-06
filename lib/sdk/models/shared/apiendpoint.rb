require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class ApiEndpointInput < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An ApiEndpoint is a description of an Endpoint for an API.
			
			field :api_endpoint_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_endpoint_id') }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :display_name, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('display_name') }}
			field :method, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('method') }}
			field :path, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('path') }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}

			sig{params(api_endpoint_id: String, description: String, display_name: String, method: String, path: String, version_id: String).void }
			def initialize(api_endpoint_id: nil, description: nil, display_name: nil, method: nil, path: nil, version_id: nil)
				@api_endpoint_id=api_endpoint_id
				@description=description
				@display_name=display_name
				@method=method
				@path=path
				@version_id=version_id
				
			end
		end

		class ApiEndpoint < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An ApiEndpoint is a description of an Endpoint for an API.
			
			field :api_endpoint_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_endpoint_id') }}
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :display_name, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('display_name') }}
			field :method, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('method') }}
			field :path, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('path') }}
			field :updated_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('updated_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}
			field :matched, T.nilable(T::Boolean), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('matched') }}

			sig{params(api_endpoint_id: String, api_id: String, created_at: DateTime, description: String, display_name: String, method: String, path: String, updated_at: DateTime, version_id: String, workspace_id: String, matched: T.nilable(T::Boolean)).void }
			def initialize(api_endpoint_id: nil, api_id: nil, created_at: nil, description: nil, display_name: nil, method: nil, path: nil, updated_at: nil, version_id: nil, workspace_id: nil, matched: nil)
				@api_endpoint_id=api_endpoint_id
				@api_id=api_id
				@created_at=created_at
				@description=description
				@display_name=display_name
				@method=method
				@path=path
				@updated_at=updated_at
				@version_id=version_id
				@workspace_id=workspace_id
				@matched=matched
				
			end
		end
	end
end