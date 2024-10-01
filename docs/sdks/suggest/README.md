# Suggest

## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [openapi](#openapi) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [generate](#generate) - Generate suggestions for improving an OpenAPI document.
* [openapi_registry](#openapi_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

## openapi

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.suggest.openapi(x_session_id="<id>", request_body=::OpenApiSDK::Operations::SuggestOpenAPIRequestBody.new(
  schema: ::OpenApiSDK::Operations::Schema.new(
    file_name: "example.file",
    content: "0x8a2EB0Aaa9".encode(),
  ),
))

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `x_session_id`                                                                                              | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `request_body`                                                                                              | [::OpenApiSDK::Operations::SuggestOpenAPIRequestBody](../../models/operations/suggestopenapirequestbody.md) | :heavy_check_mark:                                                                                          | The schema file to upload provided as a multipart/form-data file segment.                                   |

### Response

**[T.nilable(::OpenApiSDK::Operations::SuggestOpenAPIResponse)](../../models/operations/suggestopenapiresponse.md)**



## generate

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.suggest.generate(x_session_id="<id>", suggest_request_body=::OpenApiSDK::Shared::SuggestRequestBody.new(
  oas_summary: ::OpenApiSDK::Shared::OASSummary.new(
    info: ::OpenApiSDK::Shared::OASInfo.new(
      title: "<value>",
      summary: "<value>",
      description: "cake ew cute aboard nor curry wee to",
      version: "<value>",
      license: ::OpenApiSDK::Shared::License.new(),
    ),
    operations: [
      ::OpenApiSDK::Shared::OASOperation.new(
        method: "<value>",
        path: "/selinux",
        operation_id: "<id>",
        description: "starch deduct while",
        tags: [
          "<value>",
        ],
      ),
    ],
  ),
  suggestion_type: ::OpenApiSDK::Shared::SuggestRequestBodySuggestionType::METHOD_NAMES,
  diagnostics: [
    ::OpenApiSDK::Shared::Diagnostic.new(
      message: "<value>",
      path: [
        "/var/spool",
      ],
      type: "<value>",
    ),
  ],
))

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `x_session_id`                                                                        | *::String*                                                                            | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `suggest_request_body`                                                                | [::OpenApiSDK::Shared::SuggestRequestBody](../../models/shared/suggestrequestbody.md) | :heavy_check_mark:                                                                    | The OAS summary and diagnostics to use for the suggestion.                            |

### Response

**[T.nilable(::OpenApiSDK::Operations::SuggestResponse)](../../models/operations/suggestresponse.md)**



## openapi_registry

Get suggestions from an LLM model for improving an OpenAPI document stored in the registry.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.suggest.openapi_registry(x_session_id="<id>", namespace_name="<value>", revision_reference="<value>", suggest_request_body=::OpenApiSDK::Shared::SuggestRequestBody.new(
  oas_summary: ::OpenApiSDK::Shared::OASSummary.new(
    info: ::OpenApiSDK::Shared::OASInfo.new(
      title: "<value>",
      summary: "<value>",
      description: "honesty impossible till qua",
      version: "<value>",
      license: ::OpenApiSDK::Shared::License.new(),
    ),
    operations: [
      ::OpenApiSDK::Shared::OASOperation.new(
        method: "<value>",
        path: "/home/user/dir",
        operation_id: "<id>",
        description: "why lest questioningly up which uh-huh",
        tags: [
          "<value>",
        ],
      ),
    ],
  ),
  suggestion_type: ::OpenApiSDK::Shared::SuggestRequestBodySuggestionType::DIAGNOSTICS_ONLY,
  diagnostics: [
    ::OpenApiSDK::Shared::Diagnostic.new(
      message: "<value>",
      path: [
        "/usr/local/bin",
      ],
      type: "<value>",
    ),
  ],
))

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `x_session_id`                                                                        | *::String*                                                                            | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `namespace_name`                                                                      | *::String*                                                                            | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `revision_reference`                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | Tag or digest                                                                         |
| `suggest_request_body`                                                                | [::OpenApiSDK::Shared::SuggestRequestBody](../../models/shared/suggestrequestbody.md) | :heavy_minus_sign:                                                                    | Suggest options                                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::SuggestOpenAPIRegistryResponse)](../../models/operations/suggestopenapiregistryresponse.md)**

