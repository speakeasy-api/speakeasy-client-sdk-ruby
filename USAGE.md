<!-- Start SDK Example Usage [usage] -->
```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.get_all(op=::OpenApiSDK::Operations::Op.new(
  and_: false,
), metadata={
  "key": [
    "<value>",
  ],
})

if ! res.apis.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->