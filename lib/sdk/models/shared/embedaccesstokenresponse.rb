require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class EmbedAccessTokenResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # An EmbedAccessTokenResponse contains a token that can be used to embed a Speakeasy dashboard.
			
			field :access_token, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('access_token') }}

			sig{params(access_token: String).void }
			def initialize(access_token: nil)
				@access_token=access_token
				
			end
		end
	end
end