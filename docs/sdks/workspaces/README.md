# Workspaces

## Overview

### Available Operations

* [get_workspace](#get_workspace) - Get workspace
* [get_workspace_feature_flags](#get_workspace_feature_flags) - Get workspace feature flags

## get_workspace

Get information about a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetWorkspaceRequest.new()
    
res = s.workspaces.get_workspace(req)

if ! res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::SpeakeasyClientSDK::Operations::GetWorkspaceRequest](../../models/operations/getworkspacerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**




## get_workspace_feature_flags

Get workspace feature flags

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetWorkspaceFeatureFlagsRequest.new()
    
res = s.workspaces.get_workspace_feature_flags(req)

if ! res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::SpeakeasyClientSDK::Operations::GetWorkspaceFeatureFlagsRequest](../../models/operations/getworkspacefeatureflagsrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetWorkspaceFeatureFlagsResponse)](../../models/operations/getworkspacefeatureflagsresponse.md)**


