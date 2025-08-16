# Auth
(*auth*)

## Overview

REST APIs for managing Authentication

### Available Operations

* [validate_api_key](#validate_api_key) - Validate the current api key.
* [get_user](#get_user) - Get information about the current user.
* [get_access_token](#get_access_token) - Get or refresh an access token for the current workspace.
* [get_allowances](#get_allowances) - Get access allowances for a particular workspace

## validate_api_key

Validate the current api key.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="validateApiKey" method="get" path="/v1/auth/validate" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ValidateApiKeyResponse)](../../models/operations/validateapikeyresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_user

Get information about the current user.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUser" method="get" path="/v1/user" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.get_user()

unless res.user.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetUserResponse)](../../models/operations/getuserresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_access_token

Get or refresh an access token for the current workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccessToken" method="get" path="/v1/auth/access_token" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new

res = s.auth.get_access_token(workspace_id: '<id>')

unless res.access_token.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `workspace_id`     | *::String*         | :heavy_check_mark: | The workspace ID   |

### Response

**[T.nilable(Models::Operations::GetAccessTokenResponse)](../../models/operations/getaccesstokenresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_allowances

Checks if generation is permitted for a particular run of the CLI

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceAccess" method="get" path="/v1/workspace/access" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.get_allowances()

unless res.access_details.nil?
  # handle response
end

```

### Parameters

| Parameter                                    | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `gen_lock_id`                                | *T.nilable(::String)*                        | :heavy_minus_sign:                           | Unique identifier of the generation target.  |
| `target_type`                                | *T.nilable(::String)*                        | :heavy_minus_sign:                           | The type of the generated target.            |
| `passive`                                    | *T.nilable(T::Boolean)*                      | :heavy_minus_sign:                           | Skip side-effects like incrementing metrics. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceAccessResponse)](../../models/operations/getworkspaceaccessresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |