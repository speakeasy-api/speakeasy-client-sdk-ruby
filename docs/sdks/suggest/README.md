# Suggest


## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [suggest_operation_i_ds](#suggest_operation_i_ds) - Generate operation ID suggestions.

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


req = ::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody.new(
  schema: ::SpeakeasyClientSDK::Operations::Schema.new(
    content: "0xb2de88c98a".encode(),
    file_name: "your_file_here",
  ),
)
    
res = s.suggest.suggest_operation_i_ds(req)

if ! res.suggestion.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [::SpeakeasyClientSDK::Operations::SuggestOperationIDsRequestBody](../../models/operations/suggestoperationidsrequestbody.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOperationIDsResponse)](../../models/operations/suggestoperationidsresponse.md)**

