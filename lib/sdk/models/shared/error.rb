require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Error < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # The `Status` type defines a logical error model
			
			field :message, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('message') }}
			field :status_code, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('status_code') }}

			sig{params(message: String, status_code: Integer).void }
			def initialize(message: nil, status_code: nil)
				@message=message
				@status_code=status_code
				
			end
		end
	end
end