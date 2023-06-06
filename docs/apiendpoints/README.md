# api_endpoints

## Overview

REST APIs for managing ApiEndpoint entities

### Available Operations

* [delete_api_endpoint](#delete_api_endpoint) - Delete an ApiEndpoint.
* [find_api_endpoint](#find_api_endpoint) - Find an ApiEndpoint via its displayName.
* [generate_open_api_spec_for_api_endpoint](#generate_open_api_spec_for_api_endpoint) - Generate an OpenAPI specification for a particular ApiEndpoint.
* [generate_postman_collection_for_api_endpoint](#generate_postman_collection_for_api_endpoint) - Generate a Postman collection for a particular ApiEndpoint.
* [get_all_api_endpoints](#get_all_api_endpoints) - Get all Api endpoints for a particular apiID.
* [get_all_for_version_api_endpoints](#get_all_for_version_api_endpoints) - Get all ApiEndpoints for a particular apiID and versionID.
* [get_api_endpoint](#get_api_endpoint) - Get an ApiEndpoint.
* [upsert_api_endpoint](#upsert_api_endpoint) - Upsert an ApiEndpoint.

## delete_api_endpoint

Delete an ApiEndpoint. This will also delete all associated Request Logs (if using a Postgres datastore).

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DeleteApiEndpointRequest(
  path_params=Operations::DeleteApiEndpointRequest(
    api_endpoint_id="delectus",
    api_id="tempora",
    version_id="suscipit",
  ),
)
    
res = s.api_endpoints::delete_api_endpoint(req)

if res.status == 200
  # handle response
end

```

## find_api_endpoint

Find an ApiEndpoint via its displayName (set by operationId from a registered OpenAPI schema).
This is useful for finding the ID of an ApiEndpoint to use in the /v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID} endpoints.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::FindApiEndpointRequest(
  path_params=Operations::FindApiEndpointRequest(
    api_id="molestiae",
    display_name="minus",
    version_id="placeat",
  ),
)
    
res = s.api_endpoints::find_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```

## generate_open_api_spec_for_api_endpoint

This endpoint will generate a new operation in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GenerateOpenApiSpecForApiEndpointRequest(
  path_params=Operations::GenerateOpenApiSpecForApiEndpointRequest(
    api_endpoint_id="voluptatum",
    api_id="iusto",
    version_id="excepturi",
  ),
)
    
res = s.api_endpoints::generate_open_api_spec_for_api_endpoint(req)

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

## generate_postman_collection_for_api_endpoint

Generates a postman collection that allows the endpoint to be called from postman variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GeneratePostmanCollectionForApiEndpointRequest(
  path_params=Operations::GeneratePostmanCollectionForApiEndpointRequest(
    api_endpoint_id="nisi",
    api_id="recusandae",
    version_id="temporibus",
  ),
)
    
res = s.api_endpoints::generate_postman_collection_for_api_endpoint(req)

if ! res.postman_collection.nil?
  # handle response
end

```

## get_all_api_endpoints

Get all Api endpoints for a particular apiID.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetAllApiEndpointsRequest(
  path_params=Operations::GetAllApiEndpointsRequest(
    api_id="ab",
  ),
)
    
res = s.api_endpoints::get_all_api_endpoints(req)

if ! res.api_endpoints.nil?
  # handle response
end

```

## get_all_for_version_api_endpoints

Get all ApiEndpoints for a particular apiID and versionID.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetAllForVersionApiEndpointsRequest(
  path_params=Operations::GetAllForVersionApiEndpointsRequest(
    api_id="quis",
    version_id="veritatis",
  ),
)
    
res = s.api_endpoints::get_all_for_version_api_endpoints(req)

if ! res.api_endpoints.nil?
  # handle response
end

```

## get_api_endpoint

Get an ApiEndpoint.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetApiEndpointRequest(
  path_params=Operations::GetApiEndpointRequest(
    api_endpoint_id="deserunt",
    api_id="perferendis",
    version_id="ipsam",
  ),
)
    
res = s.api_endpoints::get_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```

## upsert_api_endpoint

Upsert an ApiEndpoint. If the ApiEndpoint does not exist it will be created, otherwise it will be updated.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::UpsertApiEndpointRequest(
  path_params=Operations::UpsertApiEndpointRequest(
    api_endpoint_input=Shared::ApiEndpointInput(
      api_endpoint_id="repellendus",
      description="sapiente",
      display_name="quo",
      method="odit",
      path="at",
      version_id="at",
    ),
    api_endpoint_id="maiores",
    api_id="molestiae",
    version_id="quod",
  ),
  api_endpoint_input=Shared::ApiEndpointInput(
    api_endpoint_id="quod",
    description="esse",
    display_name="totam",
    method="porro",
    path="dolorum",
    version_id="dicta",
  ),
)
    
res = s.api_endpoints::upsert_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```
