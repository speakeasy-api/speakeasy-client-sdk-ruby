# Subscriptions
(*subscriptions*)

## Overview

REST APIs for managing subscriptions

### Available Operations

* [ignore_subscription_namespace](#ignore_subscription_namespace) - Ignored a namespace for a subscription
* [activate_subscription_namespace](#activate_subscription_namespace) - Activate an ignored namespace for a subscription

## ignore_subscription_namespace

Ignored a namespace for a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ignoreSubscriptionNamespace" method="post" path="/v1/subscriptions/{subscriptionID}/{namespaceName}/ignore" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.subscriptions.ignore_subscription_namespace(subscription_id: '<id>', namespace_name: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `subscription_id`            | *::String*                   | :heavy_check_mark:           | The existing subscription ID |
| `namespace_name`             | *::String*                   | :heavy_check_mark:           | The namespace name           |

### Response

**[T.nilable(Models::Operations::IgnoreSubscriptionNamespaceResponse)](../../models/operations/ignoresubscriptionnamespaceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## activate_subscription_namespace

Activate an ignored namespace for a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="activateSubscriptionNamespace" method="post" path="/v1/subscriptions/{subscriptionID}/{namespaceName}/activate" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.subscriptions.activate_subscription_namespace(subscription_id: '<id>', namespace_name: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `subscription_id`            | *::String*                   | :heavy_check_mark:           | The existing subscription ID |
| `namespace_name`             | *::String*                   | :heavy_check_mark:           | The namespace name           |

### Response

**[T.nilable(Models::Operations::ActivateSubscriptionNamespaceResponse)](../../models/operations/activatesubscriptionnamespaceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |