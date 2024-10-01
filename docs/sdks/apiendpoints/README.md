# Apiendpoints

## Overview

### Available Operations

* [list](#list) - Get all Api endpoints for a particular apiID.

## list

Get all Api endpoints for a particular apiID.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apiendpoints.list(api_id="<id>")

if ! res.api_endpoints.nil?
  # handle response
end

```

### Parameters

| Parameter                                       | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `api_id`                                        | *::String*                                      | :heavy_check_mark:                              | The ID of the Api to retrieve ApiEndpoints for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetAllApiEndpointsResponse)](../../models/operations/getallapiendpointsresponse.md)**

