# Organizations


### Available Operations

* [get_organization_usage](#get_organization_usage) - Get billing usage summary for a particular organization
* [get_organizations](#get_organizations) - Get organizations for a user

## get_organization_usage

Returns a billing usage summary by target languages for a particular organization

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.get_organization_usage()

if ! res.organization_usage_response.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetOrganizationUsageResponse)](../../models/operations/getorganizationusageresponse.md)**


## get_organizations

Returns a list of organizations a user has access too

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organizations.get_organizations()

if ! res.organizations.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetOrganizationsResponse)](../../models/operations/getorganizationsresponse.md)**

