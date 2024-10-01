# Schemas

## Overview

REST APIs for managing Schema entities

### Available Operations

* [get_latest](#get_latest) - Get information about the latest schema.
* [register](#register) - Register a schema.
* [fetch_latest](#fetch_latest) - Download the latest schema for a particular apiID.
* [get_diff](#get_diff) - Get a diff of two schema revisions for an Api.
* [delete](#delete) - Delete a particular schema revision for an Api.
* [get_revision](#get_revision) - Get information about a particular schema revision for an Api.
* [download](#download) - Download a particular schema revision for an Api.
* [list](#list) - Get information about all schemas associated with a particular apiID.

## get_latest

Returns information about the last uploaded schema for a particular API version. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.get_latest(api_id="<id>", version_id="<id>")

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to get the schema for.          |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetSchemaResponse)](../../models/operations/getschemaresponse.md)**



## register

Allows uploading a schema for a particular API version.
This will be used to populate ApiEndpoints and used as a base for any schema generation if present.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.register(api_id="<id>", version_id="<id>", request_body=::OpenApiSDK::Operations::RegisterSchemaRequestBody.new(
  file: ::OpenApiSDK::Operations::File.new(
    file_name: "example.file",
    content: "0x4df791aeF8".encode(),
  ),
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `api_id`                                                                                                    | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The ID of the Api to get the schema for.                                                                    |
| `version_id`                                                                                                | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The version ID of the Api to delete metadata for.                                                           |
| `request_body`                                                                                              | [::OpenApiSDK::Operations::RegisterSchemaRequestBody](../../models/operations/registerschemarequestbody.md) | :heavy_check_mark:                                                                                          | The schema file to upload provided as a multipart/form-data file segment.                                   |

### Response

**[T.nilable(::OpenApiSDK::Operations::RegisterSchemaResponse)](../../models/operations/registerschemaresponse.md)**



## fetch_latest

Download the latest schema for a particular apiID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.fetch_latest(api_id="<id>", version_id="<id>")

if ! res.two_xx_application_json_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to download the schema for.     |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DownloadSchemaResponse)](../../models/operations/downloadschemaresponse.md)**



## get_diff

Get a diff of two schema revisions for an Api.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.get_diff(api_id="<id>", version_id="<id>", base_revision_id="<id>", target_revision_id="<id>")

if ! res.schema_diff.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to retrieve schemas for.        |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `base_revision_id`                                | *::String*                                        | :heavy_check_mark:                                | The base revision ID of the schema to retrieve.   |
| `target_revision_id`                              | *::String*                                        | :heavy_check_mark:                                | The target revision ID of the schema to retrieve. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetSchemaDiffResponse)](../../models/operations/getschemadiffresponse.md)**



## delete

Delete a particular schema revision for an Api.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.delete(api_id="<id>", version_id="<id>", revision_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to delete schemas for.          |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `revision_id`                                     | *::String*                                        | :heavy_check_mark:                                | The revision ID of the schema to delete.          |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteSchemaResponse)](../../models/operations/deleteschemaresponse.md)**



## get_revision

Returns information about the last uploaded schema for a particular schema revision. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.get_revision(api_id="<id>", version_id="<id>", revision_id="<id>")

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to retrieve schemas for.        |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `revision_id`                                     | *::String*                                        | :heavy_check_mark:                                | The revision ID of the schema to retrieve.        |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetSchemaRevisionResponse)](../../models/operations/getschemarevisionresponse.md)**



## download

Download a particular schema revision for an Api.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.download(api_id="<id>", version_id="<id>", revision_id="<id>")

if ! res.two_xx_application_json_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to retrieve schemas for.        |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `revision_id`                                     | *::String*                                        | :heavy_check_mark:                                | The revision ID of the schema to retrieve.        |

### Response

**[T.nilable(::OpenApiSDK::Operations::DownloadSchemaRevisionResponse)](../../models/operations/downloadschemarevisionresponse.md)**



## list

Returns information the schemas associated with a particular apiID. 
This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.schemas.list(api_id="<id>", version_id="<id>")

if ! res.schemata.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to retrieve schemas for.        |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetSchemasResponse)](../../models/operations/getschemasresponse.md)**

