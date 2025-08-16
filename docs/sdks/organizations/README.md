# Organizations
(*organizations*)

## Overview

REST APIs for managing Organizations (speakeasy L1 Tenancy construct)

### Available Operations

* [get_all](#get_all) - Get organizations for a user
* [create](#create) - Create an organization
* [get](#get) - Get organization
* [create_free_trial](#create_free_trial) - Create a free trial for an organization
* [get_usage](#get_usage) - Get billing usage summary for a particular organization
* [create_billing_add_ons](#create_billing_add_ons) - Create billing add ons
* [get_billing_add_ons](#get_billing_add_ons) - Get billing add ons
* [delete_billing_add_on](#delete_billing_add_on) - Delete billing add ons

## get_all

Returns a list of organizations a user has access too

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getOrganizations" method="get" path="/v1/organizations" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.get_all()

unless res.organizations.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetOrganizationsResponse)](../../models/operations/getorganizationsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create

Creates an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createOrganization" method="post" path="/v1/organization" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::Organization.new(
  id: '<id>',
  name: '<value>',
  slug: '<value>',
  account_type: Models::Shared::AccountType::SCALE_UP,
  telemetry_disabled: false,
  created_at: DateTime.iso8601('2025-12-17T21:02:28.497Z'),
  updated_at: DateTime.iso8601('2025-07-22T00:26:10.078Z'),
  sso_activated: true,
)

res = s.organizations.create(request: req)

unless res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `request`                                                           | [Models::Shared::Organization](../../models/shared/organization.md) | :heavy_check_mark:                                                  | The request object to use for the request.                          |

### Response

**[T.nilable(Models::Operations::CreateOrganizationResponse)](../../models/operations/createorganizationresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get

Get information about a particular organization.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getOrganization" method="get" path="/v1/organization/{organizationID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.get(organization_id: '<id>')

unless res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                              | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `organization_id`                      | *::String*                             | :heavy_check_mark:                     | Unique identifier of the organization. |

### Response

**[T.nilable(Models::Operations::GetOrganizationResponse)](../../models/operations/getorganizationresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create_free_trial

Creates a free trial for an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createFreeTrial" method="post" path="/v1/organization/free_trial" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.create_free_trial()

if res.status_code == 200
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::CreateFreeTrialResponse)](../../models/operations/createfreetrialresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_usage

Returns a billing usage summary by target languages for a particular organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getOrganizationUsage" method="get" path="/v1/organization/usage" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.get_usage()

unless res.organization_usage_response.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetOrganizationUsageResponse)](../../models/operations/getorganizationusageresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create_billing_add_ons

Create billing add ons

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createBillingAddOns" method="post" path="/v1/organization/add_ons" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::OrganizationBillingAddOnRequest.new(
  add_ons: [
    Models::Shared::BillingAddOn::CUSTOM_CODE_REGIONS,
  ],
)

res = s.organizations.create_billing_add_ons(request: req)

unless res.organization_billing_add_on_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Shared::OrganizationBillingAddOnRequest](../../models/shared/organizationbillingaddonrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::CreateBillingAddOnsResponse)](../../models/operations/createbillingaddonsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## get_billing_add_ons

Get billing add ons

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getBillingAddOns" method="get" path="/v1/organization/add_ons" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.get_billing_add_ons()

unless res.organization_billing_add_on_response.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetBillingAddOnsResponse)](../../models/operations/getbillingaddonsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## delete_billing_add_on

Delete billing add ons

### Example Usage

<!-- UsageSnippet language="ruby" operationID="deleteBillingAddOn" method="delete" path="/v1/organization/add_ons/{add_on}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organizations.delete_billing_add_on(add_on: Models::Shared::BillingAddOn::SDK_TESTING)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `add_on`                                                            | [Models::Shared::BillingAddOn](../../models/shared/billingaddon.md) | :heavy_check_mark:                                                  | The specific add-on to delete.                                      |

### Response

**[T.nilable(Models::Operations::DeleteBillingAddOnResponse)](../../models/operations/deletebillingaddonresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |