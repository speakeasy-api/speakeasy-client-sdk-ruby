require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/filters'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class QueryEventLogQueryParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :filters, T.nilable(Shared::Filters), metadata={'query_param': { 'field_name': 'filters', 'serialization': 'json' }}

			sig{params(filters: T.nilable(Shared::Filters)).void }
			def initialize(filters: nil)
				@filters=filters
				
			end
		end

		class QueryEventLogRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :query_params, QueryEventLogQueryParams

			sig{params(query_params: QueryEventLogQueryParams).void }
			def initialize(query_params: nil)
				@query_params=query_params
				
			end
		end

		class QueryEventLogResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :bounded_requests, T.nilable(T::Array[Shared::BoundedRequest])
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, bounded_requests: T.nilable(T::Array[Shared::BoundedRequest]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, bounded_requests: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@bounded_requests=bounded_requests
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end