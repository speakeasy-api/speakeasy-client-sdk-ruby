require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/filters'
require_relative '../shared/embedaccesstokenresponse'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetEmbedAccessTokenQueryParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :description, T.nilable(String), metadata={'query_param': { 'field_name': 'description', 'style': 'form', 'explode': true }}
			field :duration, T.nilable(Integer), metadata={'query_param': { 'field_name': 'duration', 'style': 'form', 'explode': true }}
			field :filters, T.nilable(Shared::Filters), metadata={'query_param': { 'field_name': 'filters', 'serialization': 'json' }}

			sig{params(description: T.nilable(String), duration: T.nilable(Integer), filters: T.nilable(Shared::Filters)).void }
			def initialize(description: nil, duration: nil, filters: nil)
				@description=description
				@duration=duration
				@filters=filters
				
			end
		end

		class GetEmbedAccessTokenRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :query_params, GetEmbedAccessTokenQueryParams

			sig{params(query_params: GetEmbedAccessTokenQueryParams).void }
			def initialize(query_params: nil)
				@query_params=query_params
				
			end
		end

		class GetEmbedAccessTokenResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :embed_access_token_response, T.nilable(Shared::EmbedAccessTokenResponse)
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, embed_access_token_response: T.nilable(Shared::EmbedAccessTokenResponse), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, embed_access_token_response: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@embed_access_token_response=embed_access_token_response
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end