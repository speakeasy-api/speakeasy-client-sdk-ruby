require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class ApiInput < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An Api is representation of a API (a collection of API Endpoints) within the Speakeasy Platform.
			
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :meta_data, T.nilable(T::Hash[Symbol, T::Array[String]]), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_data') }}

			sig{params(api_id: String, description: String, version_id: String, meta_data: T.nilable(T::Hash[Symbol, T::Array[String]])).void }
			def initialize(api_id: nil, description: nil, version_id: nil, meta_data: nil)
				@api_id=api_id
				@description=description
				@version_id=version_id
				@meta_data=meta_data
				
			end
		end

		class Api < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An Api is representation of a API (a collection of API Endpoints) within the Speakeasy Platform.
			
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :updated_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('updated_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}
			field :matched, T.nilable(T::Boolean), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('matched') }}
			field :meta_data, T.nilable(T::Hash[Symbol, T::Array[String]]), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_data') }}

			sig{params(api_id: String, created_at: DateTime, description: String, updated_at: DateTime, version_id: String, workspace_id: String, matched: T.nilable(T::Boolean), meta_data: T.nilable(T::Hash[Symbol, T::Array[String]])).void }
			def initialize(api_id: nil, created_at: nil, description: nil, updated_at: nil, version_id: nil, workspace_id: nil, matched: nil, meta_data: nil)
				@api_id=api_id
				@created_at=created_at
				@description=description
				@updated_at=updated_at
				@version_id=version_id
				@workspace_id=workspace_id
				@matched=matched
				@meta_data=meta_data
				
			end
		end
	end
end