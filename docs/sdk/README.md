# SDK

## Overview

Speakeasy API: The Speakeasy API allows teams to manage common operations with their APIs

The Speakeasy Platform Documentation
<https://docs.speakeasyapi.dev>
### Available Operations

* [validate_api_key](#validate_api_key) - Validate the current api key.

## validate_api_key

Validate the current api key.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

    
res = s.sdk::validate_api_key()

if res.status == 200
  # handle response
end

```