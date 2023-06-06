<!-- Start SDK Example Usage -->
```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetApisRequest(
  query_params=Operations::GetApisRequest(
    metadata={
      "provident": [
        "quibusdam",
        "unde",
        "nulla",
      ],
      "corrupti": [
        "vel",
        "error",
        "deserunt",
        "suscipit",
      ],
      "iure": [
        "debitis",
        "ipsa",
      ],
    },
    op=Operations::GetApisOp(
      and_=false,
    ),
  ),
)
    
res = s.apis::get_apis(req)

if ! res.apis.nil?
  # handle response
end

```

<!-- End SDK Example Usage -->