# embeds

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
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetEmbedAccessTokenRequest(
  query_params=Operations::GetEmbedAccessTokenRequest(
    description="quis",
    duration=110375,
    filters=Shared::Filters(
      filters=[
        Shared::Filter(
          key="animi",
          operator="enim",
          value="odit",
        ),
        Shared::Filter(
          key="quo",
          operator="sequi",
          value="tenetur",
        ),
        Shared::Filter(
          key="ipsam",
          operator="id",
          value="possimus",
        ),
      ],
      limit=13571,
      offset=97101,
      operator="error",
    ),
  ),
)
    
res = s.embeds::get_embed_access_token(req)

if ! res.embed_access_token_response.nil?
  # handle response
end

```

## get_valid_embed_access_tokens

Get all valid embed access tokens for the current workspace.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

    
res = s.embeds::get_valid_embed_access_tokens()

if ! res.embed_tokens.nil?
  # handle response
end

```

## revoke_embed_access_token

Revoke an embed access EmbedToken.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::RevokeEmbedAccessTokenRequest(
  path_params=Operations::RevokeEmbedAccessTokenRequest(
    token_id="temporibus",
  ),
)
    
res = s.embeds::revoke_embed_access_token(req)

if res.status == 200
  # handle response
end

```
