require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetValidEmbedAccessTokensResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :embed_tokens, T.nilable(T::Array[Shared::EmbedToken])
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, embed_tokens: T.nilable(T::Array[Shared::EmbedToken]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, embed_tokens: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@embed_tokens=embed_tokens
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end