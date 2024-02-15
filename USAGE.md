<!-- Start SDK Example Usage [usage] -->
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


req = ::SpeakeasyClientSDK::Operations::GetApisRequest.new()
    
res = s.apis.get_apis(req)

if ! res.apis.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->