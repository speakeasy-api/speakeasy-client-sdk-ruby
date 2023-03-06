require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class RevokeEmbedAccessTokenPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :token_id, String, metadata={'path_param': { 'field_name': 'tokenID', 'style': 'simple', 'explode': false }}

			sig{params(token_id: String).void }
			def initialize(token_id: nil)
				@token_id=token_id
				
			end
		end

		class RevokeEmbedAccessTokenRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, RevokeEmbedAccessTokenPathParams

			sig{params(path_params: RevokeEmbedAccessTokenPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class RevokeEmbedAccessTokenResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end