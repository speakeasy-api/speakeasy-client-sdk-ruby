# Requests

## Overview

REST APIs for retrieving request information

### Available Operations

* [query](#query) - Query the event log to retrieve a list of requests.
* [get](#get) - Get information about a particular request.
* [generate_postman_collection](#generate_postman_collection) - Generate a Postman collection for a particular request.

## query

Supports retrieving a list of request captured by the SDK for this workspace.
Allows the filtering of requests on a number of criteria such as ApiID, VersionID, Path, Method, etc.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.requests.query(filters=::OpenApiSDK::Shared::Filters.new(
  filters: [
    ::OpenApiSDK::Shared::Filter.new(
      key: "<key>",
      operator: "<value>",
      value: "<value>",
    ),
  ],
  limit: 764604,
  offset: 989836,
  operator: "<value>",
))

if ! res.bounded_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `filters`                                                                  | [T.nilable(::OpenApiSDK::Shared::Filters)](../../models/shared/filters.md) | :heavy_minus_sign:                                                         | The filter to apply to the query.                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::QueryEventLogResponse)](../../models/operations/queryeventlogresponse.md)**



## get

Get information about a particular request.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.requests.get(request_id="<id>")

if ! res.unbounded_request.nil?
  # handle response
end

```

### Parameters

| Parameter                          | Type                               | Required                           | Description                        |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `request_id`                       | *::String*                         | :heavy_check_mark:                 | The ID of the request to retrieve. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetRequestFromEventLogResponse)](../../models/operations/getrequestfromeventlogresponse.md)**



## generate_postman_collection

Generates a Postman collection for a particular request. 
Allowing it to be replayed with the same inputs that were captured by the SDK.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.requests.generate_postman_collection(request_id="<id>")

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                          | Type                               | Required                           | Description                        |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `request_id`                       | *::String*                         | :heavy_check_mark:                 | The ID of the request to retrieve. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GenerateRequestPostmanCollectionResponse)](../../models/operations/generaterequestpostmancollectionresponse.md)**

