# Embeds

## Overview

REST APIs for managing embeds

### Available Operations

* [get_access_token](#get_access_token) - Get an embed access token for the current workspace.
* [get_valid](#get_valid) - Get all valid embed access tokens for the current workspace.
* [delete](#delete) - Revoke an embed access EmbedToken.

## get_access_token

Returns an embed access token for the current workspace. This can be used to authenticate access to externally embedded content.
Filters can be applied allowing views to be filtered to things like particular customerIds.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.embeds.get_access_token(description="ew archaeology weekly lest lumpy", duration=330261, filters=::OpenApiSDK::Shared::Filters.new(
  filters: [
    ::OpenApiSDK::Shared::Filter.new(
      key: "<key>",
      operator: "<value>",
      value: "<value>",
    ),
  ],
  limit: 347573,
  offset: 52901,
  operator: "<value>",
))

if ! res.embed_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `description`                                                              | *T.nilable(::String)*                                                      | :heavy_minus_sign:                                                         | The description of the embed access token.                                 |
| `duration`                                                                 | *T.nilable(::Integer)*                                                     | :heavy_minus_sign:                                                         | The duration (in minutes) of the embed access token.                       |
| `filters`                                                                  | [T.nilable(::OpenApiSDK::Shared::Filters)](../../models/shared/filters.md) | :heavy_minus_sign:                                                         | The filter to apply to the query.                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetEmbedAccessTokenResponse)](../../models/operations/getembedaccesstokenresponse.md)**



## get_valid

Get all valid embed access tokens for the current workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.embeds.get_valid()

if ! res.embed_tokens.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetValidEmbedAccessTokensResponse)](../../models/operations/getvalidembedaccesstokensresponse.md)**



## delete

Revoke an embed access EmbedToken.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.embeds.delete(token_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `token_id`                          | *::String*                          | :heavy_check_mark:                  | The ID of the EmbedToken to revoke. |

### Response

**[T.nilable(::OpenApiSDK::Operations::RevokeEmbedAccessTokenResponse)](../../models/operations/revokeembedaccesstokenresponse.md)**

