# SDK


## Overview

Speakeasy API: The Speakeasy API allows teams to manage common operations with their APIs

The Speakeasy Platform Documentation
</docs>
### Available Operations

* [validate_api_key](#validate_api_key) - Validate the current api key.

## validate_api_key

Validate the current api key.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

    
res = s.sdk.validate_api_key()

if res.status == 200
  # handle response
end

```


### Response

**[T.nilable(Operations::ValidateApiKeyResponse)](../../models/operations/validateapikeyresponse.md)**

