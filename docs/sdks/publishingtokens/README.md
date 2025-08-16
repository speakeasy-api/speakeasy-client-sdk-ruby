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

<!-- UsageSnippet language="ruby" operationID="getPublishingToken" method="get" path="/v1/publishing-tokens" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.list()

unless res.publishing_tokens.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetPublishingTokenResponse)](../../models/operations/getpublishingtokenresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create

Creates a publishing token for the current workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPublishingToken" method="post" path="/v1/publishing-tokens" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = 

res = s.publishing_tokens.create(request: req)

unless res.publishing_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::CreatePublishingTokenRequestBody](../../models/operations/createpublishingtokenrequestbody.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::CreatePublishingTokenResponse)](../../models/operations/createpublishingtokenresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get

Get information about a particular publishing token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPublishingTokenByID" method="get" path="/v1/publishing-tokens/{tokenID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.get(token_id: '<id>')

unless res.publishing_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenByIDResponse)](../../models/operations/getpublishingtokenbyidresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## update

Updates the validity period of a particular publishing token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePublishingTokenExpiration" method="put" path="/v1/publishing-tokens/{tokenID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.update(token_id: '<id>')

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## delete

Delete a particular publishing token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="deletePublishingToken" method="delete" path="/v1/publishing-tokens/{tokenID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.delete(token_id: '<id>')

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## resolve_target

Get information about a particular publishing token target.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPublishingTokenTargetByID" method="get" path="/v1/publishing-tokens/{tokenID}/target" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.resolve_target(token_id: '<id>')

unless res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenTargetByIDResponse)](../../models/operations/getpublishingtokentargetbyidresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## resolve_metadata

Get information about a particular publishing token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPublishingTokenPublicMetadata" method="get" path="/v1/publishing-tokens/{tokenID}/metadata" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.publishing_tokens.resolve_metadata(token_id: '<id>')

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `token_id`                                 | *::String*                                 | :heavy_check_mark:                         | Unique identifier of the publishing token. |

### Response

**[T.nilable(Models::Operations::GetPublishingTokenPublicMetadataResponse)](../../models/operations/getpublishingtokenpublicmetadataresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |