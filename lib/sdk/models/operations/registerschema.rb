require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class RegisterSchemaPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :api_id, String, metadata={'path_param': { 'field_name': 'apiID', 'style': 'simple', 'explode': false }}
			field :version_id, String, metadata={'path_param': { 'field_name': 'versionID', 'style': 'simple', 'explode': false }}

			sig{params(api_id: String, version_id: String).void }
			def initialize(api_id: nil, version_id: nil)
				@api_id=api_id
				@version_id=version_id
				
			end
		end

		class RegisterSchemaRequestBodyFile < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content, String, metadata={'multipart_form': { 'content': true }}
			field :file, String, metadata={'multipart_form': { 'field_name': 'file' }}

			sig{params(content: String, file: String).void }
			def initialize(content: nil, file: nil)
				@content=content
				@file=file
				
			end
		end

		class RegisterSchemaRequestBody < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :file, RegisterSchemaRequestBodyFile, metadata={'multipart_form': { 'file': true }}

			sig{params(file: RegisterSchemaRequestBodyFile).void }
			def initialize(file: nil)
				@file=file
				
			end
		end

		class RegisterSchemaRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, RegisterSchemaPathParams
			field :request, RegisterSchemaRequestBody, metadata={'request': { 'media_type': 'multipart/form-data' }}

			sig{params(path_params: RegisterSchemaPathParams, request: RegisterSchemaRequestBody).void }
			def initialize(path_params: nil, request: nil)
				@path_params=path_params
				@request=request
				
			end
		end

		class RegisterSchemaResponse < OpenApiSDK::Utils::FieldAugmented
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