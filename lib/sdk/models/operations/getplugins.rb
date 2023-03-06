require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetPluginsResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :plugins, T.nilable(T::Array[Shared::Plugin])
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), plugins: T.nilable(T::Array[Shared::Plugin]), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, plugins: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@plugins=plugins
				@raw_response=raw_response
				
			end
		end
	end
end