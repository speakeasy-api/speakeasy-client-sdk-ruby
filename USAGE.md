<!-- Start SDK Example Usage -->
```ruby
require_relative sdk

s = sdk::SDK.new()
s.config_security(
    security=Shared::Security(
        api_key="YOUR_API_KEY_HERE",
    )
)
   
req = operations.Operations::GetApisRequest(
    query_params=Operations::GetApisQueryParams(
        metadata={
            "deserunt": [
                "nulla",
                "id",
                "vero",
            ],
            "perspiciatis": [
                "nihil",
                "fuga",
                "facilis",
                "eum",
            ],
            "iusto": [
                "saepe",
                "inventore",
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
```
<!-- End SDK Example Usage -->