require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class GenerateOpenApiSpecDiff < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :current_schema, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('current_schema') }}
			field :new_schema, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('new_schema') }}

			sig{params(current_schema: String, new_schema: String).void }
			def initialize(current_schema: nil, new_schema: nil)
				@current_schema=current_schema
				@new_schema=new_schema
				
			end
		end
	end
end