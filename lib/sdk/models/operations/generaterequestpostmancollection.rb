require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GenerateRequestPostmanCollectionPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :request_id, String, metadata={'path_param': { 'field_name': 'requestID', 'style': 'simple', 'explode': false }}

			sig{params(request_id: String).void }
			def initialize(request_id: nil)
				@request_id=request_id
				
			end
		end

		class GenerateRequestPostmanCollectionRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GenerateRequestPostmanCollectionPathParams

			sig{params(path_params: GenerateRequestPostmanCollectionPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class GenerateRequestPostmanCollectionResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :postman_collection, T.nilable(String)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), postman_collection: T.nilable(String), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, postman_collection: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@postman_collection=postman_collection
				@raw_response=raw_response
				
			end
		end
	end
end