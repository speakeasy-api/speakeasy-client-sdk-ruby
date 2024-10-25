# Artifacts

## Overview

REST APIs for working with Registry artifacts

### Available Operations

* [preflight](#preflight) - Get access token for communicating with OCI distribution endpoints
* [get_namespaces](#get_namespaces) - Each namespace contains many revisions.
* [get_revisions](#get_revisions)
* [get_tags](#get_tags)
* [post_tags](#post_tags) - Add tags to an existing revision
* [list_remote_sources](#list_remote_sources) - Get remote sources attached to a particular namespace
* [create_remote_source](#create_remote_source) - Configure a new remote source
* [get_manifest](#get_manifest) - Get manifest for a particular reference
* [get_blob](#get_blob) - Get blob for a particular digest

## preflight

Get access token for communicating with OCI distribution endpoints

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::PreflightRequest.new(
  namespace_name: "<value>",
)
    
res = s.artifacts.preflight(req)

if ! res.preflight_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [::OpenApiSDK::Shared::PreflightRequest](../../models/shared/preflightrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::PreflightResponse)](../../models/operations/preflightresponse.md)**



## get_namespaces

Each namespace contains many revisions.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.get_namespaces()

if ! res.get_namespaces_response.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetNamespacesResponse)](../../models/operations/getnamespacesresponse.md)**



## get_revisions

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.get_revisions(namespace_name="<value>", next_page_token="<value>")

if ! res.get_revisions_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `namespace_name`                           | *::String*                                 | :heavy_check_mark:                         | N/A                                        |
| `next_page_token`                          | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Token to retrieve the next page of results |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetRevisionsResponse)](../../models/operations/getrevisionsresponse.md)**



## get_tags

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.get_tags(namespace_name="<value>")

if ! res.get_tags_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `namespace_name`   | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetTagsResponse)](../../models/operations/gettagsresponse.md)**



## post_tags

Add tags to an existing revision

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.post_tags(namespace_name="<value>", add_tags=::OpenApiSDK::Shared::AddTags.new(
  revision_digest: "<value>",
  tags: [
    "<value>",
  ],
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `namespace_name`                                                           | *::String*                                                                 | :heavy_check_mark:                                                         | N/A                                                                        |
| `add_tags`                                                                 | [T.nilable(::OpenApiSDK::Shared::AddTags)](../../models/shared/addtags.md) | :heavy_minus_sign:                                                         | A JSON representation of the tags to add                                   |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostTagsResponse)](../../models/operations/posttagsresponse.md)**



## list_remote_sources

Get remote sources attached to a particular namespace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.list_remote_sources(namespace_name="<value>")

if ! res.remote_source.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `namespace_name`   | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListRemoteSourcesResponse)](../../models/operations/listremotesourcesresponse.md)**



## create_remote_source

Configure a new remote source

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::RemoteSource.new(
  inputs: [
    ::OpenApiSDK::Shared::RemoteDocument.new(
      registry_url: "https://productive-swine.net",
    ),
  ],
  output: ::OpenApiSDK::Shared::RemoteDocument.new(
    registry_url: "https://spiteful-apricot.info",
  ),
)
    
res = s.artifacts.create_remote_source(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [::OpenApiSDK::Shared::RemoteSource](../../models/shared/remotesource.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateRemoteSourceResponse)](../../models/operations/createremotesourceresponse.md)**



## get_manifest

Get manifest for a particular reference

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.get_manifest(organization_slug="<value>", workspace_slug="<value>", namespace_name="<value>", revision_reference="<value>")

if ! res.manifest.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `organization_slug`  | *::String*           | :heavy_check_mark:   | N/A                  |
| `workspace_slug`     | *::String*           | :heavy_check_mark:   | N/A                  |
| `namespace_name`     | *::String*           | :heavy_check_mark:   | N/A                  |
| `revision_reference` | *::String*           | :heavy_check_mark:   | Tag or digest        |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetManifestResponse)](../../models/operations/getmanifestresponse.md)**



## get_blob

Get blob for a particular digest

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.artifacts.get_blob(organization_slug="<value>", workspace_slug="<value>", namespace_name="<value>", digest="<value>")

if ! res.blob.nil?
  # handle response
end

```

### Parameters

| Parameter           | Type                | Required            | Description         |
| ------------------- | ------------------- | ------------------- | ------------------- |
| `organization_slug` | *::String*          | :heavy_check_mark:  | N/A                 |
| `workspace_slug`    | *::String*          | :heavy_check_mark:  | N/A                 |
| `namespace_name`    | *::String*          | :heavy_check_mark:  | N/A                 |
| `digest`            | *::String*          | :heavy_check_mark:  | N/A                 |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetBlobResponse)](../../models/operations/getblobresponse.md)**

