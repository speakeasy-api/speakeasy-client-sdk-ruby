# Organizations


### Available Operations

* [get_organizations](#get_organizations) - Get organizations for a user

## get_organizations

Returns a list of organizations a user has access too

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
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

