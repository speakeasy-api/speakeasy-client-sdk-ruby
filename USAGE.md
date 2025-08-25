<!-- Start SDK Example Usage [usage] -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->