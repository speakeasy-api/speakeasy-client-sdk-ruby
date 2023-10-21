# Apis
(*apis*)

## Overview

REST APIs for managing Api entities

### Available Operations

* [delete_api](#delete_api) - Delete an Api.
* [generate_open_api_spec](#generate_open_api_spec) - Generate an OpenAPI specification for a particular Api.
* [generate_postman_collection](#generate_postman_collection) - Generate a Postman collection for a particular Api.
* [get_all_api_versions](#get_all_api_versions) - Get all Api versions for a particular ApiEndpoint.
* [get_apis](#get_apis) - Get a list of Apis for a given workspace
* [upsert_api](#upsert_api) - Upsert an Api

## delete_api

Delete a particular version of an Api. The will also delete all associated ApiEndpoints, Metadata, Schemas & Request Logs (if using a Postgres datastore).

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::DeleteApiRequest.new(
  path_params=Operations::DeleteApiRequest.new(
    api_id="string",
    version_id="string",
  ),
)
    
res = s.apis.delete_api(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Operations::DeleteApiRequest](../../models/operations/deleteapirequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::DeleteApiResponse)](../../models/operations/deleteapiresponse.md)**


## generate_open_api_spec

This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
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

   
req = Operations::GenerateOpenApiSpecRequest.new(
  path_params=Operations::GenerateOpenApiSpecRequest.new(
    api_id="string",
    version_id="string",
  ),
)
    
res = s.apis.generate_open_api_spec(req)

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::GenerateOpenApiSpecRequest](../../models/operations/generateopenapispecrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::GenerateOpenApiSpecResponse)](../../models/operations/generateopenapispecresponse.md)**


## generate_postman_collection

Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GeneratePostmanCollectionRequest.new(
  path_params=Operations::GeneratePostmanCollectionRequest.new(
    api_id="string",
    version_id="string",
  ),
)
    
res = s.apis.generate_postman_collection(req)

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::GeneratePostmanCollectionRequest](../../models/operations/generatepostmancollectionrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::GeneratePostmanCollectionResponse)](../../models/operations/generatepostmancollectionresponse.md)**


## get_all_api_versions

Get all Api versions for a particular ApiEndpoint.
Supports filtering the versions based on metadata attributes.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetAllApiVersionsRequest.new(
  path_params=Operations::GetAllApiVersionsRequest.new(
    api_id="string",
    metadata=.new{
      "azure": .new[
        "string",
      ],
    },
    op=Operations::GetAllApiVersionsOp.new(
      and_=false,
    ),
  ),
  query_params=Operations::GetAllApiVersionsRequest.new(
    api_id="string",
    metadata=.new{
      "enhance": .new[
        "string",
      ],
    },
    op=Operations::GetAllApiVersionsOp.new(
      and_=false,
    ),
  ),
)
    
res = s.apis.get_all_api_versions(req)

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::GetAllApiVersionsRequest](../../models/operations/getallapiversionsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::GetAllApiVersionsResponse)](../../models/operations/getallapiversionsresponse.md)**


## get_apis

Get a list of all Apis and their versions for a given workspace.
Supports filtering the APIs based on metadata attributes.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetApisRequest.new(
  query_params=Operations::GetApisRequest.new(
    metadata=.new{
      "South": .new[
        "string",
      ],
    },
    op=Operations::GetApisOp.new(
      and_=false,
    ),
  ),
)
    
res = s.apis.get_apis(req)

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Operations::GetApisRequest](../../models/operations/getapisrequest.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |


### Response

**[T.nilable(Operations::GetApisResponse)](../../models/operations/getapisresponse.md)**


## upsert_api

Upsert an Api. If the Api does not exist, it will be created.
If the Api exists, it will be updated.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::UpsertApiRequest.new(
  path_params=Operations::UpsertApiRequest.new(
    api_input=Shared::ApiInput.new(
      api_id="string",
      description="Synchronised 5th generation knowledge user",
      meta_data=.new{
        "redefine": .new[
          "string",
        ],
      },
      version_id="string",
    ),
    api_id="string",
  ),
  api_input=Shared::ApiInput.new(
    api_id="string",
    description="Assimilated encompassing application",
    meta_data=.new{
      "West": .new[
        "string",
      ],
    },
    version_id="string",
  ),
)
    
res = s.apis.upsert_api(req)

if ! res.api.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Operations::UpsertApiRequest](../../models/operations/upsertapirequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::UpsertApiResponse)](../../models/operations/upsertapiresponse.md)**

