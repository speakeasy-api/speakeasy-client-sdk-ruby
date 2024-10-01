# Apis

## Overview

REST APIs for managing Api entities

### Available Operations

* [get_all](#get_all) - Get a list of Apis for a given workspace
* [get_all_versions](#get_all_versions) - Get all Api versions for a particular ApiEndpoint.
* [upsert](#upsert) - Upsert an Api
* [delete](#delete) - Delete an Api.
* [generate_open_api](#generate_open_api) - Generate an OpenAPI specification for a particular Api.
* [generate_postman](#generate_postman) - Generate a Postman collection for a particular Api.

## get_all

Get a list of all Apis and their versions for a given workspace.
Supports filtering the APIs based on metadata attributes.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.get_all(op=::OpenApiSDK::Operations::Op.new(
  and_: false,
), metadata={
  "key": [
    "<value>",
  ],
})

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `op`                                                          | [::OpenApiSDK::Operations::Op](../../models/operations/op.md) | :heavy_minus_sign:                                            | Configuration for filter operations                           |
| `metadata`                                                    | T::Hash[Symbol, T::Array<*::String*>]                         | :heavy_minus_sign:                                            | Metadata to filter Apis on                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetApisResponse)](../../models/operations/getapisresponse.md)**



## get_all_versions

Get all Api versions for a particular ApiEndpoint.
Supports filtering the versions based on metadata attributes.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.get_all_versions(api_id="<id>", op=::OpenApiSDK::Operations::QueryParamOp.new(
  and_: false,
), metadata={
  "key": [
    "<value>",
  ],
})

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `api_id`                                                                          | *::String*                                                                        | :heavy_check_mark:                                                                | The ID of the Api to retrieve.                                                    |
| `op`                                                                              | [::OpenApiSDK::Operations::QueryParamOp](../../models/operations/queryparamop.md) | :heavy_minus_sign:                                                                | Configuration for filter operations                                               |
| `metadata`                                                                        | T::Hash[Symbol, T::Array<*::String*>]                                             | :heavy_minus_sign:                                                                | Metadata to filter Apis on                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetAllApiVersionsResponse)](../../models/operations/getallapiversionsresponse.md)**



## upsert

Upsert an Api. If the Api does not exist, it will be created.
If the Api exists, it will be updated.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.upsert(api_id="<id>", api=::OpenApiSDK::Shared::ApiInput.new(
  api_id: "<id>",
  description: "curiously painfully proliferate awful bump without fly",
  version_id: "<id>",
))

if ! res.api.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `api_id`                                                          | *::String*                                                        | :heavy_check_mark:                                                | The ID of the Api to upsert.                                      |
| `api`                                                             | [::OpenApiSDK::Shared::ApiInput](../../models/shared/apiinput.md) | :heavy_check_mark:                                                | A JSON representation of the Api to upsert                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpsertApiResponse)](../../models/operations/upsertapiresponse.md)**



## delete

Delete a particular version of an Api. The will also delete all associated ApiEndpoints, Metadata, Schemas & Request Logs (if using a Postgres datastore).

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.delete(api_id="<id>", version_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `api_id`                             | *::String*                           | :heavy_check_mark:                   | The ID of the Api to delete.         |
| `version_id`                         | *::String*                           | :heavy_check_mark:                   | The version ID of the Api to delete. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteApiResponse)](../../models/operations/deleteapiresponse.md)**



## generate_open_api

This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.generate_open_api(api_id="<id>", version_id="<id>")

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `api_id`                                                            | *::String*                                                          | :heavy_check_mark:                                                  | The ID of the Api to generate an OpenAPI specification for.         |
| `version_id`                                                        | *::String*                                                          | :heavy_check_mark:                                                  | The version ID of the Api to generate an OpenAPI specification for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GenerateOpenApiSpecResponse)](../../models/operations/generateopenapispecresponse.md)**



## generate_postman

Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.generate_postman(api_id="<id>", version_id="<id>")

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `api_id`                                                        | *::String*                                                      | :heavy_check_mark:                                              | The ID of the Api to generate a Postman collection for.         |
| `version_id`                                                    | *::String*                                                      | :heavy_check_mark:                                              | The version ID of the Api to generate a Postman collection for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GeneratePostmanCollectionResponse)](../../models/operations/generatepostmancollectionresponse.md)**

