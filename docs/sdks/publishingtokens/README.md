# PublishingTokens
(*publishing_tokens*)

## Overview

### Available Operations

* [list](#list) - Get publishing tokens for a workspace
* [create](#create) - Create a publishing token for a workspace
* [get](#get) - Get a specific publishing token
* [update](#update) - Updates the validitity period of a publishing token
* [delete](#delete) - Delete a specific publishing token
* [resolve_target](#resolve_target) - Get a specific publishing token target
* [resolve_metadata](#resolve_metadata) - Get metadata about the token

## list

Returns a publishing token for the current workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.list()

if ! res.publishing_tokens.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetPublishingTokenResponse)](../../models/operations/getpublishingtokenresponse.md)**



## create

Creates a publishing token for the current workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::CreatePublishingTokenRequestBody.new(
  target_id: "<id>",
  target_resource: "<value>",
  valid_until: DateTime.iso8601('2024-06-17T07:14:55.338Z'),
  token_name: "<value>",
)

res = s.publishing_tokens.create(req)

if ! res.publishing_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::CreatePublishingTokenRequestBody](../../models/operations/createpublishingtokenrequestbody.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::CreatePublishingTokenResponse)](../../models/operations/createpublishingtokenresponse.md)**



## get

Get information about a particular publishing token.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.get(token_id="<id>")

if ! res.publishing_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenByIDResponse)](../../models/operations/getpublishingtokenbyidresponse.md)**



## update

Updates the validity period of a particular publishing token.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.update(token_id="<id>", request_body=Models::Operations::UpdatePublishingTokenExpirationRequestBody.new(
  valid_until: DateTime.iso8601('2025-07-28T19:04:48.565Z'),
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                          | Type                                                                                                                                               | Required                                                                                                                                           | Description                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| `token_id`                                                                                                                                         | *::String*                                                                                                                                         | :heavy_check_mark:                                                                                                                                 | Unique identifier of the publishing token.                                                                                                         |
| `request_body`                                                                                                                                     | [T.nilable(Models::Operations::UpdatePublishingTokenExpirationRequestBody)](../../models/operations/updatepublishingtokenexpirationrequestbody.md) | :heavy_minus_sign:                                                                                                                                 | The publishing token to update                                                                                                                     |

### Response

**[T.nilable(Models::Operations::UpdatePublishingTokenExpirationResponse)](../../models/operations/updatepublishingtokenexpirationresponse.md)**



## delete

Delete a particular publishing token.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.delete(token_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::DeletePublishingTokenResponse)](../../models/operations/deletepublishingtokenresponse.md)**



## resolve_target

Get information about a particular publishing token target.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.resolve_target(token_id="<id>")

if ! res.body.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenTargetByIDResponse)](../../models/operations/getpublishingtokentargetbyidresponse.md)**



## resolve_metadata

Get information about a particular publishing token.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.publishing_tokens.resolve_metadata(token_id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenPublicMetadataResponse)](../../models/operations/getpublishingtokenpublicmetadataresponse.md)**

