# Artifacts


## Overview

REST APIs for working with Registry artifacts

### Available Operations

* [get_blob](#get_blob) - Get blob for a particular digest
* [get_manifest](#get_manifest) - Get manifest for a particular reference
* [get_namespaces](#get_namespaces) - Each namespace contains many revisions.
* [get_oas_summary](#get_oas_summary)
* [get_revisions](#get_revisions)
* [get_tags](#get_tags)
* [post_tags](#post_tags) - Add tags to an existing revision
* [preflight](#preflight) - Get access token for communicating with OCI distribution endpoints

## get_blob

Get blob for a particular digest

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetBlobRequest.new(
  digest: "<value>",
  namespace_name: "<value>",
  organization_slug: "<value>",
  workspace_slug: "<value>",
)
    
res = s.artifacts.get_blob(req)

if ! res.blob.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::SpeakeasyClientSDK::Operations::GetBlobRequest](../../models/operations/getblobrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetBlobResponse)](../../models/operations/getblobresponse.md)**


## get_manifest

Get manifest for a particular reference

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetManifestRequest.new(
  namespace_name: "<value>",
  organization_slug: "<value>",
  revision_reference: "<value>",
  workspace_slug: "<value>",
)
    
res = s.artifacts.get_manifest(req)

if ! res.manifest.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::SpeakeasyClientSDK::Operations::GetManifestRequest](../../models/operations/getmanifestrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetManifestResponse)](../../models/operations/getmanifestresponse.md)**


## get_namespaces

Each namespace contains many revisions.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
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


## get_oas_summary

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetOASSummaryRequest.new(
  namespace_name: "<value>",
  revision_reference: "<value>",
)
    
res = s.artifacts.get_oas_summary(req)

if ! res.oas_summary.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::SpeakeasyClientSDK::Operations::GetOASSummaryRequest](../../models/operations/getoassummaryrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetOASSummaryResponse)](../../models/operations/getoassummaryresponse.md)**


## get_revisions

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetRevisionsRequest.new(
  namespace_name: "<value>",
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


## get_tags

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetTagsRequest.new(
  namespace_name: "<value>",
)
    
res = s.artifacts.get_tags(req)

if ! res.get_tags_response.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::SpeakeasyClientSDK::Operations::GetTagsRequest](../../models/operations/gettagsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetTagsResponse)](../../models/operations/gettagsresponse.md)**


## post_tags

Add tags to an existing revision

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::PostTagsRequest.new(
  namespace_name: "<value>",
)
    
res = s.artifacts.post_tags(req)

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::SpeakeasyClientSDK::Operations::PostTagsRequest](../../models/operations/posttagsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::PostTagsResponse)](../../models/operations/posttagsresponse.md)**


## preflight

Get access token for communicating with OCI distribution endpoints

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::PreflightRequest.new(
  namespace_name: "<value>",
)
    
res = s.artifacts.preflight(req)

if ! res.preflight_token.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::SpeakeasyClientSDK::Shared::PreflightRequest](../../models/shared/preflightrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::PreflightResponse)](../../models/operations/preflightresponse.md)**

