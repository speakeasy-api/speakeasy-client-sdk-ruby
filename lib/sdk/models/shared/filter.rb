require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Filter < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A filter is a key-value pair that can be used to filter a list of requests.
			
			field :key, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('key') }}
			field :operator, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('operator') }}
			field :value, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('value') }}

			sig{params(key: String, operator: String, value: String).void }
			def initialize(key: nil, operator: nil, value: nil)
				@key=key
				@operator=operator
				@value=value
				
			end
		end
	end
end