require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Schema < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A Schema represents an API schema for a particular Api and Version.
			
			field :api_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('api_id') }}
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :revision_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('revision_id') }}
			field :version_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('version_id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}

			sig{params(api_id: String, created_at: DateTime, description: String, revision_id: String, version_id: String, workspace_id: String).void }
			def initialize(api_id: nil, created_at: nil, description: nil, revision_id: nil, version_id: nil, workspace_id: nil)
				@api_id=api_id
				@created_at=created_at
				@description=description
				@revision_id=revision_id
				@version_id=version_id
				@workspace_id=workspace_id
				
			end
		end
	end
end