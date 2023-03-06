require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/plugin'
require_relative '../shared/error'
require_relative '../shared/plugin'

module OpenApiSDK
	module Operations
	

		class UpsertPluginRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :request, Shared::Plugin, metadata={'request': { 'media_type': 'application/json' }}

			sig{params(request: Shared::Plugin).void }
			def initialize(request: nil)
				@request=request
				
			end
		end

		class UpsertPluginResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :plugin, T.nilable(Shared::Plugin)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), plugin: T.nilable(Shared::Plugin), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, plugin: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@plugin=plugin
				@raw_response=raw_response
				
			end
		end
	end
end