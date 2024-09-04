# Embeds

## Overview

REST APIs for managing embeds

### Available Operations

* [get_embed_access_token](#get_embed_access_token) - Get an embed access token for the current workspace.
* [get_valid_embed_access_tokens](#get_valid_embed_access_tokens) - Get all valid embed access tokens for the current workspace.
* [revoke_embed_access_token](#revoke_embed_access_token) - Revoke an embed access EmbedToken.

## get_embed_access_token

Returns an embed access token for the current workspace. This can be used to authenticate access to externally embedded content.
Filters can be applied allowing views to be filtered to things like particular customerIds.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenRequest.new()
    
res = s.embeds.get_embed_access_token(req)

if ! res.embed_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenRequest](../../models/operations/getembedaccesstokenrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetEmbedAccessTokenResponse)](../../models/operations/getembedaccesstokenresponse.md)**




## get_valid_embed_access_tokens

Get all valid embed access tokens for the current workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.embeds.get_valid_embed_access_tokens()

if ! res.embed_tokens.nil?
  # handle response
end

```

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetValidEmbedAccessTokensResponse)](../../models/operations/getvalidembedaccesstokensresponse.md)**




## revoke_embed_access_token

Revoke an embed access EmbedToken.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenRequest.new(
  token_id: "<value>",
)
    
res = s.embeds.revoke_embed_access_token(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenRequest](../../models/operations/revokeembedaccesstokenrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::RevokeEmbedAccessTokenResponse)](../../models/operations/revokeembedaccesstokenresponse.md)**


