# Organizations

## Overview

### Available Operations

* [get_all](#get_all) - Get organizations for a user
* [create](#create) - Create an organization
* [get](#get) - Get organization
* [create_free_trial](#create_free_trial) - Create a free trial for an organization
* [get_usage](#get_usage) - Get billing usage summary for a particular organization

## get_all

Returns a list of organizations a user has access too

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.get_all()

if ! res.organizations.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetOrganizationsResponse)](../../models/operations/getorganizationsresponse.md)**



## create

Creates an organization

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::Organization.new(
  id: "<id>",
  name: "<value>",
  slug: "<value>",
  account_type: ::OpenApiSDK::Shared::AccountType::SCALE_UP,
  telemetry_disabled: false,
  created_at: DateTime.iso8601('2023-12-01T17:06:07.804Z'),
  updated_at: DateTime.iso8601('2023-04-03T12:48:32.253Z'),
)
    
res = s.organizations.create(req)

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [::OpenApiSDK::Shared::Organization](../../models/shared/organization.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateOrganizationResponse)](../../models/operations/createorganizationresponse.md)**



## get

Get information about a particular organization.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.get(organization_id="<id>")

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                              | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `organization_id`                      | *::String*                             | :heavy_check_mark:                     | Unique identifier of the organization. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetOrganizationResponse)](../../models/operations/getorganizationresponse.md)**



## create_free_trial

Creates a free trial for an organization

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.create_free_trial()

if res.status_code == 200
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateFreeTrialResponse)](../../models/operations/createfreetrialresponse.md)**



## get_usage

Returns a billing usage summary by target languages for a particular organization

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.get_usage()

if ! res.organization_usage_response.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetOrganizationUsageResponse)](../../models/operations/getorganizationusageresponse.md)**

