require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/schemadiff'

module OpenApiSDK
	module Operations
	

		class GetSchemaDiffPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}
			field :base_revision_id, String, metadata={'path_param': { 'field_name': 'baseRevisionID', 'style': 'simple', 'explode': false }}
			field :target_revision_id, String, metadata={'path_param': { 'field_name': 'targetRevisionID', 'style': 'simple', 'explode': false }}
			field :version_id, String, metadata={'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String, base_revision_id: String, target_revision_id: String, version_id: String).void }
			def initialize(api_id: nil, base_revision_id: nil, target_revision_id: nil, version_id: nil)
				@api_id=api_id
				@base_revision_id=base_revision_id
				@target_revision_id=target_revision_id
				@version_id=version_id
				
			end
		end

		class GetSchemaDiffRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GetSchemaDiffPathParams

			sig{params(path_params: GetSchemaDiffPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class GetSchemaDiffResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)
			field :schema_diff, T.nilable(Shared::SchemaDiff)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), schema_diff: T.nilable(Shared::SchemaDiff)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, schema_diff: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@raw_response=raw_response
				@schema_diff=schema_diff
				
			end
		end
	end
end