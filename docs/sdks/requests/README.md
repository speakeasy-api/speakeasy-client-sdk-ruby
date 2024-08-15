# Requests


## Overview

REST APIs for retrieving request information

### Available Operations

* [generate_request_postman_collection](#generate_request_postman_collection) - Generate a Postman collection for a particular request.
* [get_request_from_event_log](#get_request_from_event_log) - Get information about a particular request.
* [query_event_log](#query_event_log) - Query the event log to retrieve a list of requests.

## generate_request_postman_collection

Generates a Postman collection for a particular request. 
Allowing it to be replayed with the same inputs that were captured by the SDK.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GenerateRequestPostmanCollectionRequest.new(
  request_id: "<value>",
)
    
res = s.requests.generate_request_postman_collection(req)

if ! res.postman_collection.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                                       | Type                                                                                                                                            | Required                                                                                                                                        | Description                                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                       | [::SpeakeasyClientSDK::Operations::GenerateRequestPostmanCollectionRequest](../../models/operations/generaterequestpostmancollectionrequest.md) | :heavy_check_mark:                                                                                                                              | The request object to use for the request.                                                                                                      |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GenerateRequestPostmanCollectionResponse)](../../models/operations/generaterequestpostmancollectionresponse.md)**


## get_request_from_event_log

Get information about a particular request.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetRequestFromEventLogRequest.new(
  request_id: "<value>",
)
    
res = s.requests.get_request_from_event_log(req)

if ! res.unbounded_request.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Operations::GetRequestFromEventLogRequest](../../models/operations/getrequestfromeventlogrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetRequestFromEventLogResponse)](../../models/operations/getrequestfromeventlogresponse.md)**


## query_event_log

Supports retrieving a list of request captured by the SDK for this workspace.
Allows the filtering of requests on a number of criteria such as ApiID, VersionID, Path, Method, etc.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::QueryEventLogRequest.new()
    
res = s.requests.query_event_log(req)

if ! res.bounded_requests.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::SpeakeasyClientSDK::Operations::QueryEventLogRequest](../../models/operations/queryeventlogrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::QueryEventLogResponse)](../../models/operations/queryeventlogresponse.md)**

