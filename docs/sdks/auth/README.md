# Auth

## Overview

REST APIs for managing Authentication

### Available Operations

* [validate](#validate) - Validate the current api key.
* [get_current_user](#get_current_user) - Get information about the current user.
* [get_access_token](#get_access_token) - Get or refresh an access token for the current workspace.
* [get_access](#get_access) - Get access allowances for a particular workspace

## validate

Validate the current api key.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.auth.validate()

if ! res.api_key_details.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::ValidateApiKeyResponse)](../../models/operations/validateapikeyresponse.md)**



## get_current_user

Get information about the current user.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.auth.get_current_user()

if ! res.user.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetUserResponse)](../../models/operations/getuserresponse.md)**



## get_access_token

Get or refresh an access token for the current workspace.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new

    
res = s.auth.get_access_token(workspace_id="<id>")

if ! res.access_token.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `workspace_id`     | *::String*         | :heavy_check_mark: | The workspace ID   |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetAccessTokenResponse)](../../models/operations/getaccesstokenresponse.md)**



## get_access

Checks if generation is permitted for a particular run of the CLI

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.auth.get_access(gen_lock_id="<id>", target_type="<value>", passive=false)

if ! res.access_details.nil?
  # handle response
end

```

### Parameters

| Parameter                                    | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `gen_lock_id`                                | *::String*                                   | :heavy_minus_sign:                           | Unique identifier of the generation target.  |
| `target_type`                                | *::String*                                   | :heavy_minus_sign:                           | The type of the generated target.            |
| `passive`                                    | *T::Boolean*                                 | :heavy_minus_sign:                           | Skip side-effects like incrementing metrics. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceAccessResponse)](../../models/operations/getworkspaceaccessresponse.md)**

