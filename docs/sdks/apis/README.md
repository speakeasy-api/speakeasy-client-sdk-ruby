# Apis


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
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::DeleteApiRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.apis.delete_api(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::SpeakeasyClientSDK::Operations::DeleteApiRequest](../../models/operations/deleteapirequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::DeleteApiResponse)](../../models/operations/deleteapiresponse.md)**


## generate_open_api_spec

This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GenerateOpenApiSpecRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.apis.generate_open_api_spec(req)

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::SpeakeasyClientSDK::Operations::GenerateOpenApiSpecRequest](../../models/operations/generateopenapispecrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GenerateOpenApiSpecResponse)](../../models/operations/generateopenapispecresponse.md)**


## generate_postman_collection

Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GeneratePostmanCollectionRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.apis.generate_postman_collection(req)

if ! res.postman_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::SpeakeasyClientSDK::Operations::GeneratePostmanCollectionRequest](../../models/operations/generatepostmancollectionrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GeneratePostmanCollectionResponse)](../../models/operations/generatepostmancollectionresponse.md)**


## get_all_api_versions

Get all Api versions for a particular ApiEndpoint.
Supports filtering the versions based on metadata attributes.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetAllApiVersionsRequest.new(
  api_id: "<value>",
)
    
res = s.apis.get_all_api_versions(req)

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Operations::GetAllApiVersionsRequest](../../models/operations/getallapiversionsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetAllApiVersionsResponse)](../../models/operations/getallapiversionsresponse.md)**


## get_apis

Get a list of all Apis and their versions for a given workspace.
Supports filtering the APIs based on metadata attributes.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetApisRequest.new()
    
res = s.apis.get_apis(req)

if ! res.apis.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::SpeakeasyClientSDK::Operations::GetApisRequest](../../models/operations/getapisrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetApisResponse)](../../models/operations/getapisresponse.md)**


## upsert_api

Upsert an Api. If the Api does not exist, it will be created.
If the Api exists, it will be updated.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::UpsertApiRequest.new(
  api: ::SpeakeasyClientSDK::Shared::ApiInput.new(
    api_id: "<value>",
    description: "Synchronised 5th generation knowledge user",
    version_id: "<value>",
  ),
  api_id: "<value>",
)
    
res = s.apis.upsert_api(req)

if ! res.api.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::SpeakeasyClientSDK::Operations::UpsertApiRequest](../../models/operations/upsertapirequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::UpsertApiResponse)](../../models/operations/upsertapiresponse.md)**

