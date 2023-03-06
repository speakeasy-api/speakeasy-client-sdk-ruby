require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class Filters < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # Filters are used to query requests.
			
			field :filters, T::Array[Filter], metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('filters') }}
			field :limit, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('limit') }}
			field :offset, Integer, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('offset') }}
			field :operator, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('operator') }}

			sig{params(filters: T::Array[Filter], limit: Integer, offset: Integer, operator: String).void }
			def initialize(filters: nil, limit: nil, offset: nil, operator: nil)
				@filters=filters
				@limit=limit
				@offset=offset
				@operator=operator
				
			end
		end
	end
end