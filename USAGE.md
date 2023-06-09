<!-- Start SDK Example Usage -->
```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetApisRequest.new(
  query_params=Operations::GetApisRequest.new(
    metadata=.new{
      "provident": .new[
        "quibusdam",
        "unde",
        "nulla",
      ],
      "corrupti": .new[
        "vel",
        "error",
        "deserunt",
        "suscipit",
      ],
      "iure": .new[
        "debitis",
        "ipsa",
      ],
    },
    op=Operations::GetApisOp.new(
      and_=false,
    ),
  ),
)
    
res = s.apis.get_apis(req)

if ! res.apis.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->