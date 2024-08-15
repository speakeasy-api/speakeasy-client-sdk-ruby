# Auth


## Overview

REST APIs for managing Authentication

### Available Operations

* [get_access_token](#get_access_token) - Get or refresh an access token for the current workspace.
* [get_user](#get_user) - Get information about the current user.
* [get_workspace_access](#get_workspace_access) - Get access allowances for a particular workspace
* [validate_api_key](#validate_api_key) - Validate the current api key.

## get_access_token

Get or refresh an access token for the current workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new


req = ::SpeakeasyClientSDK::Operations::GetAccessTokenRequest.new(
  workspace_id: "<value>",
)
    
res = s.auth.get_access_token(req)

if ! res.access_token.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::SpeakeasyClientSDK::Operations::GetAccessTokenRequest](../../models/operations/getaccesstokenrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetAccessTokenResponse)](../../models/operations/getaccesstokenresponse.md)**


## get_user

Get information about the current user.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.auth.get_user()

if ! res.user.nil?
  # handle response
end

```




### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetUserResponse)](../../models/operations/getuserresponse.md)**


## get_workspace_access

Checks if generation is permitted for a particular run of the CLI

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
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


s = ::SpeakeasyClientSDK::SDK.new
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

