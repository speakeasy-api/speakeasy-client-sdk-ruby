# Suggest

## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [apply_operation_i_ds](#apply_operation_i_ds) - Apply operation ID suggestions and download result.
* [suggest_open_api](#suggest_open_api) - Generate suggestions for improving an OpenAPI document.
* [suggest_open_api_registry](#suggest_open_api_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

## apply_operation_i_ds

Apply operation ID suggestions and download result.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::ApplyOperationIDsRequest.new(
  x_session_id: "<value>",
)
    
res = s.suggest.apply_operation_i_ds(req)

if ! res.two_hundred_application_json_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Operations::ApplyOperationIDsRequest](../../models/operations/applyoperationidsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::ApplyOperationIDsResponse)](../../models/operations/applyoperationidsresponse.md)**




## suggest_open_api

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequest.new(
  request_body: ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequestBody.new(
    schema: ::SpeakeasyClientSDK::Operations::Schema.new(
      content: "0x0FbfeAEcc8".encode(),
      file_name: "example.file",
    ),
  ),
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_open_api(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequest](../../models/operations/suggestopenapirequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOpenAPIResponse)](../../models/operations/suggestopenapiresponse.md)**




## suggest_open_api_registry

Get suggestions from an LLM model for improving an OpenAPI document stored in the registry.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryRequest.new(
  namespace_name: "<value>",
  revision_reference: "<value>",
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_open_api_registry(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryRequest](../../models/operations/suggestopenapiregistryrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryResponse)](../../models/operations/suggestopenapiregistryresponse.md)**


