# Auth


## Overview

REST APIs for managing Authentication

### Available Operations

* [get_workspace_access](#get_workspace_access) - Get access allowances for a particular workspace
* [validate_api_key](#validate_api_key) - Validate the current api key.

## get_workspace_access

Checks if generation is permitted for a particular run of the CLI

### Example Usage

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


req = ::SpeakeasyClientSDK::Operations::GetWorkspaceAccessRequest.new()
    
res = s.auth.get_workspace_access(req)

if ! res.access_details.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::SpeakeasyClientSDK::Operations::GetWorkspaceAccessRequest](../../models/operations/getworkspaceaccessrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetWorkspaceAccessResponse)](../../models/operations/getworkspaceaccessresponse.md)**


## validate_api_key

Validate the current api key.

### Example Usage

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

    
res = s.auth.validate_api_key()

if ! res.api_key_details.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::ValidateApiKeyResponse)](../../models/operations/validateapikeyresponse.md)**

