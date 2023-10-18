# ApiEndpoints
(*api_endpoints*)

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
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::DeleteApiEndpointRequest.new(
  path_params=Operations::DeleteApiEndpointRequest.new(
    api_endpoint_id="blue",
    api_id="Gasoline",
    version_id="Southwest",
  ),
)
    
res = s.api_endpoints.delete_api_endpoint(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::DeleteApiEndpointRequest](../../models/operations/deleteapiendpointrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::DeleteApiEndpointResponse)](../../models/operations/deleteapiendpointresponse.md)**


## find_api_endpoint

Find an ApiEndpoint via its displayName (set by operationId from a registered OpenAPI schema).
This is useful for finding the ID of an ApiEndpoint to use in the /v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID} endpoints.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::FindApiEndpointRequest.new(
  path_params=Operations::FindApiEndpointRequest.new(
    api_id="Cotton",
    display_name="Chief",
    version_id="Wooden",
  ),
)
    
res = s.api_endpoints.find_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::FindApiEndpointRequest](../../models/operations/findapiendpointrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::FindApiEndpointResponse)](../../models/operations/findapiendpointresponse.md)**


## generate_open_api_spec_for_api_endpoint

This endpoint will generate a new operation in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GenerateOpenApiSpecForApiEndpointRequest.new(
  path_params=Operations::GenerateOpenApiSpecForApiEndpointRequest.new(
    api_endpoint_id="Mazda",
    api_id="web",
    version_id="explicabo",
  ),
)
    
res = s.api_endpoints.generate_open_api_spec_for_api_endpoint(req)

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Operations::GenerateOpenApiSpecForApiEndpointRequest](../../models/operations/generateopenapispecforapiendpointrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(Operations::GenerateOpenApiSpecForApiEndpointResponse)](../../models/operations/generateopenapispecforapiendpointresponse.md)**


## generate_postman_collection_for_api_endpoint

Generates a postman collection that allows the endpoint to be called from postman variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GeneratePostmanCollectionForApiEndpointRequest.new(
  path_params=Operations::GeneratePostmanCollectionForApiEndpointRequest.new(
    api_endpoint_id="indigo",
    api_id="barring",
    version_id="Senior",
  ),
)
    
res = s.api_endpoints.generate_postman_collection_for_api_endpoint(req)

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [Operations::GeneratePostmanCollectionForApiEndpointRequest](../../models/operations/generatepostmancollectionforapiendpointrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |


### Response

**[T.nilable(Operations::GeneratePostmanCollectionForApiEndpointResponse)](../../models/operations/generatepostmancollectionforapiendpointresponse.md)**


## get_all_api_endpoints

Get all Api endpoints for a particular apiID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetAllApiEndpointsRequest.new(
  path_params=Operations::GetAllApiEndpointsRequest.new(
    api_id="unless",
  ),
)
    
res = s.api_endpoints.get_all_api_endpoints(req)

if ! res.api_endpoints.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::GetAllApiEndpointsRequest](../../models/operations/getallapiendpointsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::GetAllApiEndpointsResponse)](../../models/operations/getallapiendpointsresponse.md)**


## get_all_for_version_api_endpoints

Get all ApiEndpoints for a particular apiID and versionID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetAllForVersionApiEndpointsRequest.new(
  path_params=Operations::GetAllForVersionApiEndpointsRequest.new(
    api_id="now",
    version_id="Diesel",
  ),
)
    
res = s.api_endpoints.get_all_for_version_api_endpoints(req)

if ! res.api_endpoints.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Operations::GetAllForVersionApiEndpointsRequest](../../models/operations/getallforversionapiendpointsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(Operations::GetAllForVersionApiEndpointsResponse)](../../models/operations/getallforversionapiendpointsresponse.md)**


## get_api_endpoint

Get an ApiEndpoint.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetApiEndpointRequest.new(
  path_params=Operations::GetApiEndpointRequest.new(
    api_endpoint_id="flog",
    api_id="synthesize",
    version_id="Barium",
  ),
)
    
res = s.api_endpoints.get_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::GetApiEndpointRequest](../../models/operations/getapiendpointrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::GetApiEndpointResponse)](../../models/operations/getapiendpointresponse.md)**


## upsert_api_endpoint

Upsert an ApiEndpoint. If the ApiEndpoint does not exist it will be created, otherwise it will be updated.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::UpsertApiEndpointRequest.new(
  path_params=Operations::UpsertApiEndpointRequest.new(
    api_endpoint_input=Shared::ApiEndpointInput.new(
      api_endpoint_id="Facilitator",
      description="Cross-group bottom-line productivity",
      display_name="nor",
      method="Northwest",
      path="/private",
      version_id="what",
    ),
    api_endpoint_id="Trans",
    api_id="Kia",
    version_id="Electronic",
  ),
  api_endpoint_input=Shared::ApiEndpointInput.new(
    api_endpoint_id="Northwest",
    description="Decentralized heuristic moderator",
    display_name="game",
    method="North",
    path="/media",
    version_id="transmitter",
  ),
)
    
res = s.api_endpoints.upsert_api_endpoint(req)

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::UpsertApiEndpointRequest](../../models/operations/upsertapiendpointrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::UpsertApiEndpointResponse)](../../models/operations/upsertapiendpointresponse.md)**

