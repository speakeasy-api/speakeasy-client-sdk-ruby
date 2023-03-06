require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetApisOp < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :and_, T::Boolean, metadata={'query_param': { 'field_name': 'and' }}

			sig{params(and_: T::Boolean).void }
			def initialize(and_: nil)
				@and_=and_
				
			end
		end

		class GetApisQueryParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :metadata, T.nilable(T::Hash[Symbol, T::Array[String]]), metadata={'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true }}
			field :op, T.nilable(GetApisOp), metadata={'query_param': { 'field_name': 'op', 'style': 'deepObject', 'explode': true }}

			sig{params(metadata: T.nilable(T::Hash[Symbol, T::Array[String]]), op: T.nilable(GetApisOp)).void }
			def initialize(metadata: nil, op: nil)
				@metadata=metadata
				@op=op
				
			end
		end

		class GetApisRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :query_params, GetApisQueryParams

			sig{params(query_params: GetApisQueryParams).void }
			def initialize(query_params: nil)
				@query_params=query_params
				
			end
		end

		class GetApisResponse < OpenApiSDK::Utils::FieldAugmented
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