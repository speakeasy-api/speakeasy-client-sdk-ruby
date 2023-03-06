require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class EmbedToken < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A representation of an embed token granted for working with Speakeasy components.
			
			field :created_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :created_by, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_by') }}
			field :description, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('description') }}
			field :expires_at, DateTime, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('expires_at'), 'decoder': Utils::datetime_from_iso_format(false) }}
			field :filters, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('filters') }}
			field :id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('id') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}
			field :last_used, T.nilable(DateTime), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('last_used'), 'decoder': Utils::datetime_from_iso_format(true) }}
			field :revoked_at, T.nilable(DateTime), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('revoked_at'), 'decoder': Utils::datetime_from_iso_format(true) }}
			field :revoked_by, T.nilable(String), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('revoked_by') }}

			sig{params(created_at: DateTime, created_by: String, description: String, expires_at: DateTime, filters: String, id: String, workspace_id: String, last_used: T.nilable(DateTime), revoked_at: T.nilable(DateTime), revoked_by: T.nilable(String)).void }
			def initialize(created_at: nil, created_by: nil, description: nil, expires_at: nil, filters: nil, id: nil, workspace_id: nil, last_used: nil, revoked_at: nil, revoked_by: nil)
				@created_at=created_at
				@created_by=created_by
				@description=description
				@expires_at=expires_at
				@filters=filters
				@id=id
				@workspace_id=workspace_id
				@last_used=last_used
				@revoked_at=revoked_at
				@revoked_by=revoked_by
				
			end
		end
	end
end