require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class DeleteSchemaPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}
			field :revision_id, String, metadata={'path_param': { 'field_name': 'revisionID', 'style': 'simple', 'explode': false }}
			field :version_id, String, metadata={'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String, revision_id: String, version_id: String).void }
			def initialize(api_id: nil, revision_id: nil, version_id: nil)
				@api_id=api_id
				@revision_id=revision_id
				@version_id=version_id
				
			end
		end

		class DeleteSchemaRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, DeleteSchemaPathParams

			sig{params(path_params: DeleteSchemaPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class DeleteSchemaResponse < OpenApiSDK::Utils::FieldAugmented
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