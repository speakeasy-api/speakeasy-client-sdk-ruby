require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Security < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_key, String, metadata={'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-api-key'}}

			sig{params(api_key: String).void }
			def initialize(api_key: nil)
				@api_key=api_key
				
			end
		end
	end
end