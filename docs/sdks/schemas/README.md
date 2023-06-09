# schemas

## Overview

REST APIs for managing Schema entities

### Available Operations

* [delete_schema](#delete_schema) - Delete a particular schema revision for an Api.
* [download_schema](#download_schema) - Download the latest schema for a particular apiID.
* [download_schema_revision](#download_schema_revision) - Download a particular schema revision for an Api.
* [get_schema](#get_schema) - Get information about the latest schema.
* [get_schema_diff](#get_schema_diff) - Get a diff of two schema revisions for an Api.
* [get_schema_revision](#get_schema_revision) - Get information about a particular schema revision for an Api.
* [get_schemas](#get_schemas) - Get information about all schemas associated with a particular apiID.
* [register_schema](#register_schema) - Register a schema.

## delete_schema

Delete a particular schema revision for an Api.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::DeleteSchemaRequest.new(
  path_params=Operations::DeleteSchemaRequest.new(
    api_id="modi",
    revision_id="qui",
    version_id="aliquid",
  ),
)
    
res = s.schemas.delete_schema(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::DeleteSchemaRequest](../../models/operations/deleteschemarequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::DeleteSchemaResponse)](../../models/operations/deleteschemaresponse.md)**


## download_schema

Download the latest schema for a particular apiID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::DownloadSchemaRequest.new(
  path_params=Operations::DownloadSchemaRequest.new(
    api_id="cupiditate",
    version_id="quos",
  ),
)
    
res = s.schemas.download_schema(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::DownloadSchemaRequest](../../models/operations/downloadschemarequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::DownloadSchemaResponse)](../../models/operations/downloadschemaresponse.md)**


## download_schema_revision

Download a particular schema revision for an Api.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::DownloadSchemaRevisionRequest.new(
  path_params=Operations::DownloadSchemaRevisionRequest.new(
    api_id="perferendis",
    revision_id="magni",
    version_id="assumenda",
  ),
)
    
res = s.schemas.download_schema_revision(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::DownloadSchemaRevisionRequest](../../models/operations/downloadschemarevisionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::DownloadSchemaRevisionResponse)](../../models/operations/downloadschemarevisionresponse.md)**


## get_schema

Returns information about the last uploaded schema for a particular API version. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetSchemaRequest.new(
  path_params=Operations::GetSchemaRequest.new(
    api_id="ipsam",
    version_id="alias",
  ),
)
    
res = s.schemas.get_schema(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Operations::GetSchemaRequest](../../models/operations/getschemarequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::GetSchemaResponse)](../../models/operations/getschemaresponse.md)**


## get_schema_diff

Get a diff of two schema revisions for an Api.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetSchemaDiffRequest.new(
  path_params=Operations::GetSchemaDiffRequest.new(
    api_id="fugit",
    base_revision_id="dolorum",
    target_revision_id="excepturi",
    version_id="tempora",
  ),
)
    
res = s.schemas.get_schema_diff(req)

if ! res.schema_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::GetSchemaDiffRequest](../../models/operations/getschemadiffrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::GetSchemaDiffResponse)](../../models/operations/getschemadiffresponse.md)**


## get_schema_revision

Returns information about the last uploaded schema for a particular schema revision. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetSchemaRevisionRequest.new(
  path_params=Operations::GetSchemaRevisionRequest.new(
    api_id="facilis",
    revision_id="tempore",
    version_id="labore",
  ),
)
    
res = s.schemas.get_schema_revision(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::GetSchemaRevisionRequest](../../models/operations/getschemarevisionrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::GetSchemaRevisionResponse)](../../models/operations/getschemarevisionresponse.md)**


## get_schemas

Returns information the schemas associated with a particular apiID. 
This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetSchemasRequest.new(
  path_params=Operations::GetSchemasRequest.new(
    api_id="delectus",
    version_id="eum",
  ),
)
    
res = s.schemas.get_schemas(req)

if ! res.schemata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Operations::GetSchemasRequest](../../models/operations/getschemasrequest.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |


### Response

**[T.nilable(Operations::GetSchemasResponse)](../../models/operations/getschemasresponse.md)**


## register_schema

Allows uploading a schema for a particular API version.
This will be used to populate ApiEndpoints and used as a base for any schema generation if present.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::RegisterSchemaRequest.new(
  path_params=Operations::RegisterSchemaRequest.new(
    request_body=Operations::RegisterSchemaRequestBody.new(
      file=Operations::RegisterSchemaRequestBodyFile.new(
        content="non".encode(),
        file="eligendi",
      ),
    ),
    api_id="sint",
    version_id="aliquid",
  ),
  request_body=Operations::RegisterSchemaRequestBody.new(
    file=Operations::RegisterSchemaRequestBodyFile.new(
      content="provident".encode(),
      file="necessitatibus",
    ),
  ),
)
    
res = s.schemas.register_schema(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::RegisterSchemaRequest](../../models/operations/registerschemarequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::RegisterSchemaResponse)](../../models/operations/registerschemaresponse.md)**
