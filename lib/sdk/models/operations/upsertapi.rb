require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apiinput'
require_relative '../shared/api'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class UpsertApiPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String).void }
			def initialize(api_id: nil)
				@api_id=api_id
				
			end
		end

		class UpsertApiRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, UpsertApiPathParams
			field :request, Shared::ApiInput, metadata={'request': { 'media_type': 'application/json' }}

			sig{params(path_params: UpsertApiPathParams, request: Shared::ApiInput).void }
			def initialize(path_params: nil, request: nil)
				@path_params=path_params
				@request=request
				
			end
		end

		class UpsertApiResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :api, T.nilable(Shared::Api)
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, api: T.nilable(Shared::Api), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, api: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@api=api
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end