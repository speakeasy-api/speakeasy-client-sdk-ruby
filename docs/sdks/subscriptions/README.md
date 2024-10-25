# Subscriptions

## Overview

REST APIs for managing subscriptions

### Available Operations

* [list_registry_subscriptions](#list_registry_subscriptions) - List Subscriptions
* [create_subscription](#create_subscription) - Create Subscription

## list_registry_subscriptions

List Subscriptions

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Operations::ListRegistrySubscriptionsRequest.new()
    
res = s.subscriptions.list_registry_subscriptions(req)

if ! res.registry_subscriptions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::OpenApiSDK::Operations::ListRegistrySubscriptionsRequest](../../models/operations/listregistrysubscriptionsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListRegistrySubscriptionsResponse)](../../models/operations/listregistrysubscriptionsresponse.md)**



## create_subscription

Create Subscription

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.subscriptions.create_subscription(registry_subscription=::OpenApiSDK::Shared::RegistrySubscription.new(
  id: "<id>",
  workspace_id: "<id>",
  event_type: ::OpenApiSDK::Shared::EventType::UPDATE,
  namespace_name: "<value>",
  subscription_type: ::OpenApiSDK::Shared::SubscriptionType::CLI,
  subscription_settings: "<value>",
  created_at: DateTime.iso8601('2022-06-08T17:58:57.702Z'),
  updated_at: DateTime.iso8601('2022-07-20T08:51:35.776Z'),
), workspace_id="<id>")

if ! res.registry_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `registry_subscription`                                                                   | [::OpenApiSDK::Shared::RegistrySubscription](../../models/shared/registrysubscription.md) | :heavy_check_mark:                                                                        | The subscription to create                                                                |
| `workspace_id`                                                                            | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | The workspace ID                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateSubscriptionResponse)](../../models/operations/createsubscriptionresponse.md)**

