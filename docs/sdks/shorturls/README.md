# ShortURLs
(*short_ur_ls*)

## Overview

REST APIs for managing short URLs

### Available Operations

* [create](#create) - Shorten a URL.

## create

Shorten a URL.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::CreateRequestBody.new(
  url: "https://probable-heating.com/",
)

res = s.short_ur_ls.create(req)

if ! res.short_url.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::CreateRequestBody](../../models/operations/createrequestbody.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::CreateResponse)](../../models/operations/createresponse.md)**

