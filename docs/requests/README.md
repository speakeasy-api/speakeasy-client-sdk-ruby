# requests

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
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GenerateRequestPostmanCollectionRequest(
  path_params=Operations::GenerateRequestPostmanCollectionRequest(
    request_id="veritatis",
  ),
)
    
res = s.requests::generate_request_postman_collection(req)

if ! res.postman_collection.nil?
  # handle response
end

```

## get_request_from_event_log

Get information about a particular request.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetRequestFromEventLogRequest(
  path_params=Operations::GetRequestFromEventLogRequest(
    request_id="itaque",
  ),
)
    
res = s.requests::get_request_from_event_log(req)

if ! res.unbounded_request.nil?
  # handle response
end

```

## query_event_log

Supports retrieving a list of request captured by the SDK for this workspace.
Allows the filtering of requests on a number of criteria such as ApiID, VersionID, Path, Method, etc.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::QueryEventLogRequest(
  query_params=Operations::QueryEventLogRequest(
    filters=Shared::Filters(
      filters=[
        Shared::Filter(
          key="enim",
          operator="consequatur",
          value="est",
        ),
        Shared::Filter(
          key="quibusdam",
          operator="explicabo",
          value="deserunt",
        ),
      ],
      limit=716327,
      offset=841386,
      operator="labore",
    ),
  ),
)
    
res = s.requests::query_event_log(req)

if ! res.bounded_requests.nil?
  # handle response
end

```
