# Suggest
(*suggest*)

## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [openapi](#openapi) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [generate](#generate) - Generate suggestions for improving an OpenAPI document.
* [suggest_items](#suggest_items) - Generate generic suggestions for a list of items.
* [openapi_registry](#openapi_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

## openapi

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="suggestOpenAPI" method="post" path="/v1/suggest/openapi" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.suggest.openapi(x_session_id: '<id>', request_body: Models::Operations::SuggestOpenAPIRequestBody.new(
  schema: Models::Operations::Schema.new(
    file_name: 'example.file',
    content: File.binread("example.file"),
  ),
))

unless res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `x_session_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `request_body`                                                                                        | [Models::Operations::SuggestOpenAPIRequestBody](../../models/operations/suggestopenapirequestbody.md) | :heavy_check_mark:                                                                                    | The schema file to upload provided as a multipart/form-data file segment.                             |

### Response

**[T.nilable(Models::Operations::SuggestOpenAPIResponse)](../../models/operations/suggestopenapiresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## generate

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="suggest" method="post" path="/v1/suggest/openapi_from_summary" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.suggest.generate(x_session_id: '<id>', suggest_request_body: Models::Shared::SuggestRequestBody.new(
  oas_summary: Models::Shared::OASSummary.new(
    info: Models::Shared::OASInfo.new(
      title: '<value>',
      summary: '<value>',
      description: 'strictly shyly who and than majority unit boohoo',
      version: '<value>',
      license: Models::Shared::License.new(),
    ),
    operations: [],
  ),
  suggestion_type: Models::Shared::SuggestRequestBodySuggestionType::METHOD_NAMES,
  diagnostics: [],
))

unless res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `x_session_id`                                                                  | *::String*                                                                      | :heavy_check_mark:                                                              | N/A                                                                             |
| `suggest_request_body`                                                          | [Models::Shared::SuggestRequestBody](../../models/shared/suggestrequestbody.md) | :heavy_check_mark:                                                              | The OAS summary and diagnostics to use for the suggestion.                      |

### Response

**[T.nilable(Models::Operations::SuggestResponse)](../../models/operations/suggestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## suggest_items

Generate generic suggestions for a list of items.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="suggestItems" method="post" path="/v1/suggest/items" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::SuggestItemsRequestBody.new(
  prompt: '<value>',
  items: [
    '<value 1>',
  ],
)

res = s.suggest.suggest_items(request: req)

unless res.strings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Shared::SuggestItemsRequestBody](../../models/shared/suggestitemsrequestbody.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::SuggestItemsResponse)](../../models/operations/suggestitemsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## openapi_registry

Get suggestions from an LLM model for improving an OpenAPI document stored in the registry.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="suggestOpenAPIRegistry" method="post" path="/v1/suggest/openapi/{namespace_name}/{revision_reference}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.suggest.openapi_registry(x_session_id: '<id>', namespace_name: '<value>', revision_reference: '<value>')

unless res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `x_session_id`                                                                             | *::String*                                                                                 | :heavy_check_mark:                                                                         | N/A                                                                                        |
| `namespace_name`                                                                           | *::String*                                                                                 | :heavy_check_mark:                                                                         | N/A                                                                                        |
| `revision_reference`                                                                       | *::String*                                                                                 | :heavy_check_mark:                                                                         | Tag or digest                                                                              |
| `suggest_request_body`                                                                     | [T.nilable(Models::Shared::SuggestRequestBody)](../../models/shared/suggestrequestbody.md) | :heavy_minus_sign:                                                                         | Suggest options                                                                            |

### Response

**[T.nilable(Models::Operations::SuggestOpenAPIRegistryResponse)](../../models/operations/suggestopenapiregistryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |