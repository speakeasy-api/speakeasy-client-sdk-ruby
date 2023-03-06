require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class RequestMetadata < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # Key-Value pairs associated with a request
			
			field :key, T.nilable(String), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('key') }}
			field :value, T.nilable(String), metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('value') }}

			sig{params(key: T.nilable(String), value: T.nilable(String)).void }
			def initialize(key: nil, value: nil)
				@key=key
				@value=value
				
			end
		end
	end
end