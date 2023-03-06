require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/filters'
require_relative '../shared/error'

module OpenApiSDK
	module Operations
	

		class RunPluginPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :plugin_id, String, metadata={'path_param': { 'field_name': 'pluginID', 'style': 'simple', 'explode': false }}

			sig{params(plugin_id: String).void }
			def initialize(plugin_id: nil)
				@plugin_id=plugin_id
				
			end
		end

		class RunPluginQueryParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :filters, T.nilable(Shared::Filters), metadata={'query_param': { 'field_name': 'filters', 'serialization': 'json' }}

			sig{params(filters: T.nilable(Shared::Filters)).void }
			def initialize(filters: nil)
				@filters=filters
				
			end
		end

		class RunPluginRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, RunPluginPathParams
			field :query_params, RunPluginQueryParams

			sig{params(path_params: RunPluginPathParams, query_params: RunPluginQueryParams).void }
			def initialize(path_params: nil, query_params: nil)
				@path_params=path_params
				@query_params=query_params
				
			end
		end

		class RunPluginResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :bounded_requests, T.nilable(T::Array[Shared::BoundedRequest])
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)

			sig{params(content_type: String, status_code: Integer, bounded_requests: T.nilable(T::Array[Shared::BoundedRequest]), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
			def initialize(content_type: nil, status_code: nil, bounded_requests: nil, error: nil, raw_response: nil)
				@content_type=content_type
				@status_code=status_code
				@bounded_requests=bounded_requests
				@error=error
				@raw_response=raw_response
				
			end
		end
	end
end