<!-- Start SDK Example Usage -->


```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetApisRequest.new(
  query_params=Operations::GetApisRequest.new(
    metadata=.new{
      "South": .new[
        "string",
      ],
    },
    op=Operations::QueryParamOp.new(
      and_=false,
    ),
  ),
)
    
res = s.apis.get_apis(req)

if ! res.classes.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->