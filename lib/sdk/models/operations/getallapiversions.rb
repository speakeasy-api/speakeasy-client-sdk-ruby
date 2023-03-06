require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetAllApiVersionsPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String).void }
			def initialize(api_id: nil)
				@api_id=api_id
				
			end
		end

		class GetAllApiVersionsOp < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :and_, T::Boolean, metadata={'query_param': { 'field_name': 'and' }}

			sig{params(and_: T::Boolean).void }
			def initialize(and_: nil)
				@and_=and_
				
			end
		end

		class GetAllApiVersionsQueryParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :metadata, T.nilable(T::Hash[Symbol, T::Array[String]]), metadata={'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true }}
			field :op, T.nilable(GetAllApiVersionsOp), metadata={'query_param': { 'field_name': 'op', 'style': 'deepObject', 'explode': true }}

			sig{params(metadata: T.nilable(T::Hash[Symbol, T::Array[String]]), op: T.nilable(GetAllApiVersionsOp)).void }
			def initialize(metadata: nil, op: nil)
				@metadata=metadata
				@op=op
				
			end
		end

		class GetAllApiVersionsRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GetAllApiVersionsPathParams
			field :query_params, GetAllApiVersionsQueryParams

			sig{params(path_params: GetAllApiVersionsPathParams, query_params: GetAllApiVersionsQueryParams).void }
			def initialize(path_params: nil, query_params: nil)
				@path_params=path_params
				@query_params=query_params
				
			end
		end

		class GetAllApiVersionsResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :apis, T.nilable(T::Array[Shared::Api])
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, apis: T.nilable(T::Array[Shared::Api]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, apis: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@apis=apis
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end