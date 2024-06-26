# Suggest


## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [apply_operation_i_ds](#apply_operation_i_ds) - Apply operation ID suggestions and download result.
* [suggest_operation_i_ds](#suggest_operation_i_ds) - Generate operation ID suggestions.
* [suggest_operation_i_ds_registry](#suggest_operation_i_ds_registry) - Generate operation ID suggestions.

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


## suggest_operation_i_ds

Get suggestions from an LLM model for improving the operationIDs in the provided schema.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequest.new(
  request_body: ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody.new(
    schema: ::SpeakeasyClientSDK::Operations::Schema.new(
      content: "0xb2de88c98a".encode(),
      file_name: "your_file_here",
    ),
  ),
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_operation_i_ds(req)

if ! res.suggested_operation_i_ds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequest](../../models/operations/suggestoperationidsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOperationIDsResponse)](../../models/operations/suggestoperationidsresponse.md)**


## suggest_operation_i_ds_registry

Get suggestions from an LLM model for improving the operationIDs in the provided schema.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRegistryRequest.new(
  namespace_name: "<value>",
  revision_reference: "<value>",
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_operation_i_ds_registry(req)

if ! res.suggested_operation_i_ds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                             | Type                                                                                                                                  | Required                                                                                                                              | Description                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                             | [::SpeakeasyClientSDK::Operations::SuggestOperationIDsRegistryRequest](../../models/operations/suggestoperationidsregistryrequest.md) | :heavy_check_mark:                                                                                                                    | The request object to use for the request.                                                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOperationIDsRegistryResponse)](../../models/operations/suggestoperationidsregistryresponse.md)**

