# Workspaces


### Available Operations

* [get_workspace](#get_workspace) - Get workspace

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

