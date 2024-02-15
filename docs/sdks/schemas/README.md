# Schemas


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
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::DeleteSchemaRequest.new(
  api_id: "<value>",
  revision_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.delete_schema(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::SpeakeasyClientSDK::Operations::DeleteSchemaRequest](../../models/operations/deleteschemarequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::DeleteSchemaResponse)](../../models/operations/deleteschemaresponse.md)**


## download_schema

Download the latest schema for a particular apiID.

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


req = ::SpeakeasyClientSDK::Operations::DownloadSchemaRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.download_schema(req)

if ! res.two_hundred_application_json_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::SpeakeasyClientSDK::Operations::DownloadSchemaRequest](../../models/operations/downloadschemarequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::DownloadSchemaResponse)](../../models/operations/downloadschemaresponse.md)**


## download_schema_revision

Download a particular schema revision for an Api.

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


req = ::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionRequest.new(
  api_id: "<value>",
  revision_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.download_schema_revision(req)

if ! res.two_hundred_application_json_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionRequest](../../models/operations/downloadschemarevisionrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::DownloadSchemaRevisionResponse)](../../models/operations/downloadschemarevisionresponse.md)**


## get_schema

Returns information about the last uploaded schema for a particular API version. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

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


req = ::SpeakeasyClientSDK::Operations::GetSchemaRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.get_schema(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::SpeakeasyClientSDK::Operations::GetSchemaRequest](../../models/operations/getschemarequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaResponse)](../../models/operations/getschemaresponse.md)**


## get_schema_diff

Get a diff of two schema revisions for an Api.

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


req = ::SpeakeasyClientSDK::Operations::GetSchemaDiffRequest.new(
  api_id: "<value>",
  base_revision_id: "<value>",
  target_revision_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.get_schema_diff(req)

if ! res.schema_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::SpeakeasyClientSDK::Operations::GetSchemaDiffRequest](../../models/operations/getschemadiffrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaDiffResponse)](../../models/operations/getschemadiffresponse.md)**


## get_schema_revision

Returns information about the last uploaded schema for a particular schema revision. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

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


req = ::SpeakeasyClientSDK::Operations::GetSchemaRevisionRequest.new(
  api_id: "<value>",
  revision_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.get_schema_revision(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Operations::GetSchemaRevisionRequest](../../models/operations/getschemarevisionrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetSchemaRevisionResponse)](../../models/operations/getschemarevisionresponse.md)**


## get_schemas

Returns information the schemas associated with a particular apiID. 
This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.

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


req = ::SpeakeasyClientSDK::Operations::GetSchemasRequest.new(
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.get_schemas(req)

if ! res.classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::SpeakeasyClientSDK::Operations::GetSchemasRequest](../../models/operations/getschemasrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetSchemasResponse)](../../models/operations/getschemasresponse.md)**


## register_schema

Allows uploading a schema for a particular API version.
This will be used to populate ApiEndpoints and used as a base for any schema generation if present.

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


req = ::SpeakeasyClientSDK::Operations::RegisterSchemaRequest.new(
  request_body: ::SpeakeasyClientSDK::Operations::RegisterSchemaRequestBody.new(
    file: ::SpeakeasyClientSDK::Operations::File.new(
      content: "0xCAFCA03e0e".encode(),
      file_name: "bronze_table_blues.m2a",
    ),
  ),
  api_id: "<value>",
  version_id: "<value>",
)
    
res = s.schemas.register_schema(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::SpeakeasyClientSDK::Operations::RegisterSchemaRequest](../../models/operations/registerschemarequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::RegisterSchemaResponse)](../../models/operations/registerschemaresponse.md)**

