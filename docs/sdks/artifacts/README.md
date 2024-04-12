# Artifacts


### Available Operations

* [get_namespaces](#get_namespaces) - Each namespace contains many revisions.
* [get_revisions](#get_revisions)
* [preflight](#preflight) - Get access token for communicating with OCI distribution endpoints

## get_namespaces

Each namespace contains many revisions.

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

    
res = s.artifacts.get_namespaces()

if ! res.get_namespaces_response.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetNamespacesResponse)](../../models/operations/getnamespacesresponse.md)**


## get_revisions

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


req = ::SpeakeasyClientSDK::Operations::GetRevisionsRequest.new(
  namespace_id: "<value>",
)
    
res = s.artifacts.get_revisions(req)

if ! res.get_revisions_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::SpeakeasyClientSDK::Operations::GetRevisionsRequest](../../models/operations/getrevisionsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetRevisionsResponse)](../../models/operations/getrevisionsresponse.md)**


## preflight

Get access token for communicating with OCI distribution endpoints

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

    
res = s.artifacts.preflight()

if ! res.preflight_token.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::PreflightResponse)](../../models/operations/preflightresponse.md)**

