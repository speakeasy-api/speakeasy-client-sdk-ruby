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
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DeleteSchemaRequest(
  path_params=Operations::DeleteSchemaRequest(
    api_id="modi",
    revision_id="qui",
    version_id="aliquid",
  ),
)
    
res = s.schemas::delete_schema(req)

if res.status == 200
  # handle response
end

```

## download_schema

Download the latest schema for a particular apiID.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DownloadSchemaRequest(
  path_params=Operations::DownloadSchemaRequest(
    api_id="cupiditate",
    version_id="quos",
  ),
)
    
res = s.schemas::download_schema(req)

if ! res.schema.nil?
  # handle response
end

```

## download_schema_revision

Download a particular schema revision for an Api.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DownloadSchemaRevisionRequest(
  path_params=Operations::DownloadSchemaRevisionRequest(
    api_id="perferendis",
    revision_id="magni",
    version_id="assumenda",
  ),
)
    
res = s.schemas::download_schema_revision(req)

if ! res.schema.nil?
  # handle response
end

```

## get_schema

Returns information about the last uploaded schema for a particular API version. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetSchemaRequest(
  path_params=Operations::GetSchemaRequest(
    api_id="ipsam",
    version_id="alias",
  ),
)
    
res = s.schemas::get_schema(req)

if ! res.schema.nil?
  # handle response
end

```

## get_schema_diff

Get a diff of two schema revisions for an Api.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetSchemaDiffRequest(
  path_params=Operations::GetSchemaDiffRequest(
    api_id="fugit",
    base_revision_id="dolorum",
    target_revision_id="excepturi",
    version_id="tempora",
  ),
)
    
res = s.schemas::get_schema_diff(req)

if ! res.schema_diff.nil?
  # handle response
end

```

## get_schema_revision

Returns information about the last uploaded schema for a particular schema revision. 
This won't include the schema itself, that can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetSchemaRevisionRequest(
  path_params=Operations::GetSchemaRevisionRequest(
    api_id="facilis",
    revision_id="tempore",
    version_id="labore",
  ),
)
    
res = s.schemas::get_schema_revision(req)

if ! res.schema.nil?
  # handle response
end

```

## get_schemas

Returns information the schemas associated with a particular apiID. 
This won't include the schemas themselves, they can be retrieved via the downloadSchema operation.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetSchemasRequest(
  path_params=Operations::GetSchemasRequest(
    api_id="delectus",
    version_id="eum",
  ),
)
    
res = s.schemas::get_schemas(req)

if ! res.schemata.nil?
  # handle response
end

```

## register_schema

Allows uploading a schema for a particular API version.
This will be used to populate ApiEndpoints and used as a base for any schema generation if present.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::RegisterSchemaRequest(
  path_params=Operations::RegisterSchemaRequest(
    request_body=Operations::RegisterSchemaRequestBody(
      file=Operations::RegisterSchemaRequestBodyFile(
        content="non".encode(),
        file="eligendi",
      ),
    ),
    api_id="sint",
    version_id="aliquid",
  ),
  request_body=Operations::RegisterSchemaRequestBody(
    file=Operations::RegisterSchemaRequestBodyFile(
      content="provident".encode(),
      file="necessitatibus",
    ),
  ),
)
    
res = s.schemas::register_schema(req)

if res.status == 200
  # handle response
end

```
