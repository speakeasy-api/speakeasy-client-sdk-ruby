require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class VersionMetadataInput < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A set of keys and associated values, attached to a particular version of an Api.
			
			field :meta_key, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_key') }}
			field :meta_value, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_value') }}

			sig{params(meta_key: String, meta_value: String).void }
			def initialize(meta_key: nil, meta_value: nil)
				@meta_key=meta_key
				@meta_value=meta_value
				
			end
		end

		class VersionMetadata < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A set of keys and associated values, attached to a particular version of an Api.
			
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :meta_key, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_key') }}
			field :meta_value, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('meta_value') }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}

			sig{params(api_id: String, created_at: DateTime, meta_key: String, meta_value: String, version_id: String, workspace_id: String).void }
			def initialize(api_id: nil, created_at: nil, meta_key: nil, meta_value: nil, version_id: nil, workspace_id: nil)
				@api_id=api_id
				@created_at=created_at
				@meta_key=meta_key
				@meta_value=meta_value
				@version_id=version_id
				@workspace_id=workspace_id
				
			end
		end
	end
end