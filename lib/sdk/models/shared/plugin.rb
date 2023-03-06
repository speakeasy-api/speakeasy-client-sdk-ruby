require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Plugin < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A plugin is a short script that is run against ingested requests
			
			field :code, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('code') }}
			field :plugin_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('plugin_id') }}
			field :title, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('title') }}
			field :workspace_id, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('workspace_id') }}
			field :created_at, T.nilable(DateTime), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('created_at'), 'decoder': Utils::datetime_from_iso_format(true) }}
			field :eval_hash, T.nilable(String), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('eval_hash') }}
			field :updated_at, T.nilable(DateTime), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('updated_at'), 'decoder': Utils::datetime_from_iso_format(true) }}

			sig{params(code: String, plugin_id: String, title: String, workspace_id: String, created_at: T.nilable(DateTime), eval_hash: T.nilable(String), updated_at: T.nilable(DateTime)).void }
			def initialize(code: nil, plugin_id: nil, title: nil, workspace_id: nil, created_at: nil, eval_hash: nil, updated_at: nil)
				@code=code
				@plugin_id=plugin_id
				@title=title
				@workspace_id=workspace_id
				@created_at=created_at
				@eval_hash=eval_hash
				@updated_at=updated_at
				
			end
		end
	end
end