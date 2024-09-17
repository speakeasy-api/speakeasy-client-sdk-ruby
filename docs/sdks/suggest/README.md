# Suggest

## Overview

REST APIs for managing LLM OAS suggestions

### Available Operations

* [suggest](#suggest) - Generate suggestions for improving an OpenAPI document.
* [suggest_open_api](#suggest_open_api) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [suggest_open_api_registry](#suggest_open_api_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

## suggest

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestRequest.new(
  suggest_request_body: ::SpeakeasyClientSDK::Shared::SuggestRequestBody.new(
    diagnostics: [
      ::SpeakeasyClientSDK::Shared::Diagnostic.new(
        message: "<value>",
        path: [
          "/rescue",
        ],
        type: "<value>",
      ),
    ],
    oas_summary: ::SpeakeasyClientSDK::Shared::OASSummary.new(
      info: ::SpeakeasyClientSDK::Shared::OASInfo.new(
        description: "Object-based multi-state pricing structure",
        license: ::SpeakeasyClientSDK::Shared::License.new(),
        summary: "<value>",
        title: "<value>",
        version: "<value>",
      ),
      operations: [
        ::SpeakeasyClientSDK::Shared::OASOperation.new(
          description: "Innovative tangible hierarchy",
          method: "<value>",
          operation_id: "<value>",
          path: "/usr/include",
          tags: [
            "<value>",
          ],
        ),
      ],
    ),
    suggestion_type: ::SpeakeasyClientSDK::Shared::SuggestRequestBodySuggestionType::METHOD_NAMES,
  ),
  x_session_id: "<value>",
)
    
res = s.suggest.suggest(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::SpeakeasyClientSDK::Operations::SuggestRequest](../../models/operations/suggestrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestResponse)](../../models/operations/suggestresponse.md)**




## suggest_open_api

Get suggestions from an LLM model for improving an OpenAPI document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequest.new(
  request_body: ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequestBody.new(
    schema: ::SpeakeasyClientSDK::Operations::Schema.new(
      content: "0x0FbfeAEcc8".encode(),
      file_name: "example.file",
    ),
  ),
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_open_api(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::SpeakeasyClientSDK::Operations::SuggestOpenAPIRequest](../../models/operations/suggestopenapirequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOpenAPIResponse)](../../models/operations/suggestopenapiresponse.md)**




## suggest_open_api_registry

Get suggestions from an LLM model for improving an OpenAPI document stored in the registry.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryRequest.new(
  namespace_name: "<value>",
  revision_reference: "<value>",
  x_session_id: "<value>",
)
    
res = s.suggest.suggest_open_api_registry(req)

if ! res.schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryRequest](../../models/operations/suggestopenapiregistryrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SuggestOpenAPIRegistryResponse)](../../models/operations/suggestopenapiregistryresponse.md)**


