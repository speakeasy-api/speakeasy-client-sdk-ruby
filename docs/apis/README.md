# apis

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
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DeleteApiRequest(
  path_params=Operations::DeleteApiRequest(
    api_id="nam",
    version_id="officia",
  ),
)
    
res = s.apis::delete_api(req)

if res.status == 200
  # handle response
end

```

## generate_open_api_spec

This endpoint will generate any missing operations in any registered OpenAPI document if the operation does not already exist in the document.
Returns the original document and the newly generated document allowing a diff to be performed to see what has changed.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GenerateOpenApiSpecRequest(
  path_params=Operations::GenerateOpenApiSpecRequest(
    api_id="occaecati",
    version_id="fugit",
  ),
)
    
res = s.apis::generate_open_api_spec(req)

if ! res.generate_open_api_spec_diff.nil?
  # handle response
end

```

## generate_postman_collection

Generates a postman collection containing all endpoints for a particular API. Includes variables produced for any path/query/header parameters included in the OpenAPI document.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GeneratePostmanCollectionRequest(
  path_params=Operations::GeneratePostmanCollectionRequest(
    api_id="deleniti",
    version_id="hic",
  ),
)
    
res = s.apis::generate_postman_collection(req)

if ! res.postman_collection.nil?
  # handle response
end

```

## get_all_api_versions

Get all Api versions for a particular ApiEndpoint.
Supports filtering the versions based on metadata attributes.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetAllApiVersionsRequest(
  path_params=Operations::GetAllApiVersionsRequest(
    api_id="optio",
    metadata={
      "beatae": [
        "molestiae",
        "modi",
      ],
      "qui": [
        "cum",
        "esse",
        "ipsum",
        "excepturi",
      ],
      "aspernatur": [
        "ad",
      ],
    },
    op=Operations::GetAllApiVersionsOp(
      and_=false,
    ),
  ),
  query_params=Operations::GetAllApiVersionsRequest(
    api_id="natus",
    metadata={
      "iste": [
        "natus",
      ],
    },
    op=Operations::GetAllApiVersionsOp(
      and_=false,
    ),
  ),
)
    
res = s.apis::get_all_api_versions(req)

if ! res.apis.nil?
  # handle response
end

```

## get_apis

Get a list of all Apis and their versions for a given workspace.
Supports filtering the APIs based on metadata attributes.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetApisRequest(
  query_params=Operations::GetApisRequest(
    metadata={
      "hic": [
        "fuga",
        "in",
        "corporis",
        "iste",
      ],
      "iure": [
        "quidem",
        "architecto",
        "ipsa",
        "reiciendis",
      ],
    },
    op=Operations::GetApisOp(
      and_=false,
    ),
  ),
)
    
res = s.apis::get_apis(req)

if ! res.apis.nil?
  # handle response
end

```

## upsert_api

Upsert an Api. If the Api does not exist, it will be created.
If the Api exists, it will be updated.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::UpsertApiRequest(
  path_params=Operations::UpsertApiRequest(
    api_input=Shared::ApiInput(
      api_id="est",
      description="mollitia",
      meta_data={
        "dolores": [
          "corporis",
        ],
        "explicabo": [
          "enim",
          "omnis",
          "nemo",
          "minima",
        ],
        "excepturi": [
          "iure",
        ],
      },
      version_id="culpa",
    ),
    api_id="doloribus",
  ),
  api_input=Shared::ApiInput(
    api_id="sapiente",
    description="architecto",
    meta_data={
      "dolorem": [
        "consequuntur",
        "repellat",
        "mollitia",
      ],
      "occaecati": [
        "commodi",
        "quam",
      ],
      "molestiae": [
        "error",
      ],
    },
    version_id="quia",
  ),
)
    
res = s.apis::upsert_api(req)

if ! res.api.nil?
  # handle response
end

```
