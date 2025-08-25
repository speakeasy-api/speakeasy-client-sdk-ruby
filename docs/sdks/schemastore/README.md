# SchemaStore
(*schema_store*)

## Overview

### Available Operations

* [get_schema_store_item](#get_schema_store_item) - Get a OAS schema from the schema store
* [create_schema_store_item](#create_schema_store_item) - Create a schema in the schema store

## get_schema_store_item

Get a OAS schema from the schema store

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSchemaStoreItem" method="get" path="/v1/schema_store" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = 

res = s.schema_store.get_schema_store_item(request: req)

unless res.schema_store_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::GetSchemaStoreItemRequestBody](../../models/operations/getschemastoreitemrequestbody.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::GetSchemaStoreItemResponse)](../../models/operations/getschemastoreitemresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create_schema_store_item

Create a schema in the schema store

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createSchemaStoreItem" method="post" path="/v1/schema_store" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::CreateSchemaStoreItemRequestBody.new(
  spec: '<value>',
  package_name: '<value>',
  sdk_classname: '<value>',
  format: Models::Operations::Format::YAML,
)

res = s.schema_store.create_schema_store_item(request: req)

unless res.schema_store_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::CreateSchemaStoreItemRequestBody](../../models/operations/createschemastoreitemrequestbody.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::CreateSchemaStoreItemResponse)](../../models/operations/createschemastoreitemresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |