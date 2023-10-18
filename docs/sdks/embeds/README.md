# Embeds
(*embeds*)

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
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetEmbedAccessTokenRequest.new(
  query_params=Operations::GetEmbedAccessTokenRequest.new(
    description="Versatile asynchronous leverage",
    duration=554373,
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="<key>",
          operator="Salad",
          value="unless",
        ),
      ],
      limit=976336,
      offset=844126,
      operator="frame",
    ),
  ),
)
    
res = s.embeds.get_embed_access_token(req)

if ! res.embed_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::GetEmbedAccessTokenRequest](../../models/operations/getembedaccesstokenrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::GetEmbedAccessTokenResponse)](../../models/operations/getembedaccesstokenresponse.md)**


## get_valid_embed_access_tokens

Get all valid embed access tokens for the current workspace.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

    
res = s.embeds.get_valid_embed_access_tokens()

if ! res.embed_tokens.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetValidEmbedAccessTokensResponse)](../../models/operations/getvalidembedaccesstokensresponse.md)**


## revoke_embed_access_token

Revoke an embed access EmbedToken.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::RevokeEmbedAccessTokenRequest.new(
  path_params=Operations::RevokeEmbedAccessTokenRequest.new(
    token_id="Ball",
  ),
)
    
res = s.embeds.revoke_embed_access_token(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::RevokeEmbedAccessTokenRequest](../../models/operations/revokeembedaccesstokenrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::RevokeEmbedAccessTokenResponse)](../../models/operations/revokeembedaccesstokenresponse.md)**

