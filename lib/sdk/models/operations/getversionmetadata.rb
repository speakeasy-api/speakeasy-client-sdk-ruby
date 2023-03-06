require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class GetVersionMetadataPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}
			field :version_id, String, metadata={'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String, version_id: String).void }
			def initialize(api_id: nil, version_id: nil)
				@api_id=api_id
				@version_id=version_id
				
			end
		end

		class GetVersionMetadataRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GetVersionMetadataPathParams

			sig{params(path_params: GetVersionMetadataPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class GetVersionMetadataResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)
			field :version_metadata, T.nilable(T::Array[Shared::VersionMetadata])

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), version_metadata: T.nilable(T::Array[Shared::VersionMetadata])).void }
			def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, version_metadata: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@raw_response=raw_response
				@version_metadata=version_metadata
				
			end
		end
	end
end