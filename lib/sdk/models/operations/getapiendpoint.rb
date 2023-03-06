require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apiendpoint'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetApiEndpointPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_endpoint_id, String, metadata={'path_param': { 'field_name': 'apiEndpointID', 'style': 'simple', 'explode': false }}
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}
			field :version_id, String, metadata={'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false }}

			sig{params(api_endpoint_id: String, api_id: String, version_id: String).void }
			def initialize(api_endpoint_id: nil, api_id: nil, version_id: nil)
				@api_endpoint_id=api_endpoint_id
				@api_id=api_id
				@version_id=version_id
				
			end
		end

		class GetApiEndpointRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GetApiEndpointPathParams

			sig{params(path_params: GetApiEndpointPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class GetApiEndpointResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :api_endpoint, T.nilable(Shared::ApiEndpoint)
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, api_endpoint: T.nilable(Shared::ApiEndpoint), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, api_endpoint: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@api_endpoint=api_endpoint
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end