# ApiEndpoints

## Overview

REST APIs for managing ApiEndpoint entities

### Available Operations

* [list](#list) - Get all Api endpoints for a particular apiID.
* [get_all_for_version](#get_all_for_version) - Get all ApiEndpoints for a particular apiID and versionID.
* [find](#find) - Find an ApiEndpoint via its displayName.
* [delete](#delete) - Delete an ApiEndpoint.
* [get](#get) - Get an ApiEndpoint.
* [upsert](#upsert) - Upsert an ApiEndpoint.
* [generate_open_api](#generate_open_api) - Generate an OpenAPI specification for a particular ApiEndpoint.
* [generate_postman_collection](#generate_postman_collection) - Generate a Postman collection for a particular ApiEndpoint.

## list

Get all Api endpoints for a particular apiID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.list(api_id="<id>")

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



## get_all_for_version

Get all ApiEndpoints for a particular apiID and versionID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.get_all_for_version(api_id="<id>", version_id="<id>")

if ! res.api_endpoints.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `api_id`                                                | *::String*                                              | :heavy_check_mark:                                      | The ID of the Api to retrieve ApiEndpoints for.         |
| `version_id`                                            | *::String*                                              | :heavy_check_mark:                                      | The version ID of the Api to retrieve ApiEndpoints for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetAllForVersionApiEndpointsResponse)](../../models/operations/getallforversionapiendpointsresponse.md)**



## find

Find an ApiEndpoint via its displayName (set by operationId from a registered OpenAPI schema).
This is useful for finding the ID of an ApiEndpoint to use in the /v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID} endpoints.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.find(api_id="<id>", version_id="<id>", display_name="Aliyah.Weimann41")

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                            | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `api_id`                                                                             | *::String*                                                                           | :heavy_check_mark:                                                                   | The ID of the Api the ApiEndpoint belongs to.                                        |
| `version_id`                                                                         | *::String*                                                                           | :heavy_check_mark:                                                                   | The version ID of the Api the ApiEndpoint belongs to.                                |
| `display_name`                                                                       | *::String*                                                                           | :heavy_check_mark:                                                                   | The displayName of the ApiEndpoint to find (set by operationId from OpenAPI schema). |

### Response

**[T.nilable(::OpenApiSDK::Operations::FindApiEndpointResponse)](../../models/operations/findapiendpointresponse.md)**



## delete

Delete an ApiEndpoint. This will also delete all associated Request Logs (if using a Postgres datastore).

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.delete(api_id="<id>", version_id="<id>", api_endpoint_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `api_id`                                              | *::String*                                            | :heavy_check_mark:                                    | The ID of the Api the ApiEndpoint belongs to.         |
| `version_id`                                          | *::String*                                            | :heavy_check_mark:                                    | The version ID of the Api the ApiEndpoint belongs to. |
| `api_endpoint_id`                                     | *::String*                                            | :heavy_check_mark:                                    | The ID of the ApiEndpoint to delete.                  |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteApiEndpointResponse)](../../models/operations/deleteapiendpointresponse.md)**



## get

Get an ApiEndpoint.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.get(api_id="<id>", version_id="<id>", api_endpoint_id="<id>")

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `api_id`                                              | *::String*                                            | :heavy_check_mark:                                    | The ID of the Api the ApiEndpoint belongs to.         |
| `version_id`                                          | *::String*                                            | :heavy_check_mark:                                    | The version ID of the Api the ApiEndpoint belongs to. |
| `api_endpoint_id`                                     | *::String*                                            | :heavy_check_mark:                                    | The ID of the ApiEndpoint to retrieve.                |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetApiEndpointResponse)](../../models/operations/getapiendpointresponse.md)**



## upsert

Upsert an ApiEndpoint. If the ApiEndpoint does not exist it will be created, otherwise it will be updated.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.upsert(api_id="<id>", version_id="<id>", api_endpoint_id="<id>", api_endpoint=::OpenApiSDK::Shared::ApiEndpointInput.new(
  api_endpoint_id: "<id>",
  description: "curiously painfully proliferate awful bump without fly",
  display_name: "Dorian_Mertz62",
  method: "<value>",
  path: "/usr/libexec",
  version_id: "<id>",
))

if ! res.api_endpoint.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `api_id`                                                                          | *::String*                                                                        | :heavy_check_mark:                                                                | The ID of the Api the ApiEndpoint belongs to.                                     |
| `version_id`                                                                      | *::String*                                                                        | :heavy_check_mark:                                                                | The version ID of the Api the ApiEndpoint belongs to.                             |
| `api_endpoint_id`                                                                 | *::String*                                                                        | :heavy_check_mark:                                                                | The ID of the ApiEndpoint to upsert.                                              |
| `api_endpoint`                                                                    | [::OpenApiSDK::Shared::ApiEndpointInput](../../models/shared/apiendpointinput.md) | :heavy_check_mark:                                                                | A JSON representation of the ApiEndpoint to upsert.                               |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpsertApiEndpointResponse)](../../models/operations/upsertapiendpointresponse.md)**



## generate_open_api

This endpoint will generate a new operation in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.generate_open_api(api_id="<id>", version_id="<id>", api_endpoint_id="<id>")

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `api_id`                                                            | *::String*                                                          | :heavy_check_mark:                                                  | The ID of the Api to generate an OpenAPI specification for.         |
| `version_id`                                                        | *::String*                                                          | :heavy_check_mark:                                                  | The version ID of the Api to generate an OpenAPI specification for. |
| `api_endpoint_id`                                                   | *::String*                                                          | :heavy_check_mark:                                                  | The ID of the ApiEndpoint to generate an OpenAPI specification for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GenerateOpenApiSpecForApiEndpointResponse)](../../models/operations/generateopenapispecforapiendpointresponse.md)**



## generate_postman_collection

Generates a postman collection that allows the endpoint to be called from postman variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.api_endpoints.generate_postman_collection(api_id="<id>", version_id="<id>", api_endpoint_id="<id>")

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `api_id`                                                        | *::String*                                                      | :heavy_check_mark:                                              | The ID of the Api to generate a Postman collection for.         |
| `version_id`                                                    | *::String*                                                      | :heavy_check_mark:                                              | The version ID of the Api to generate a Postman collection for. |
| `api_endpoint_id`                                               | *::String*                                                      | :heavy_check_mark:                                              | The ID of the ApiEndpoint to generate a Postman collection for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GeneratePostmanCollectionForApiEndpointResponse)](../../models/operations/generatepostmancollectionforapiendpointresponse.md)**

