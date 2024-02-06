<!-- Start SDK Example Usage [usage] -->
```ruby
require_relative speakeasy_client_sdk_ruby


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  security=::SpeakeasyClientSDK::Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetApisRequest.new(
  metadata={
    "South": [
      "string",
    ],
  },
  op=::SpeakeasyClientSDK::Operations::QueryParamOp.new(
    and_=false,
  ),
)
    
res = s.apis.get_apis(req)

if ! res.classes.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->