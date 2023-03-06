require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/unboundedrequest'

module OpenApiSDK
	module Operations
	

		class GetRequestFromEventLogPathParams < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :request_id, String, metadata={'path_param': { 'field_name': 'requestID', 'style': 'simple', 'explode': false }}

			sig{params(request_id: String).void }
			def initialize(request_id: nil)
				@request_id=request_id
				
			end
		end

		class GetRequestFromEventLogRequest < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :path_params, GetRequestFromEventLogPathParams

			sig{params(path_params: GetRequestFromEventLogPathParams).void }
			def initialize(path_params: nil)
				@path_params=path_params
				
			end
		end

		class GetRequestFromEventLogResponse < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :content_type, String
			field :status_code, Integer
			field :error, T.nilable(Shared::Error)
			field :raw_response, T.nilable(Faraday::Response)
			field :unbounded_request, T.nilable(Shared::UnboundedRequest)

			sig{params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), unbounded_request: T.nilable(Shared::UnboundedRequest)).void }
			def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, unbounded_request: nil)
				@content_type=content_type
				@status_code=status_code
				@error=error
				@raw_response=raw_response
				@unbounded_request=unbounded_request
				
			end
		end
	end
end