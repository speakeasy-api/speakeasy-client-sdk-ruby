# Artifacts
(*artifacts*)

## Overview

REST APIs for working with Registry artifacts

### Available Operations

* [preflight](#preflight) - Get access token for communicating with OCI distribution endpoints
* [get_namespaces](#get_namespaces) - Each namespace contains many revisions.
* [set_archived](#set_archived) - Set whether a namespace is archived
* [get_revisions](#get_revisions)
* [get_tags](#get_tags)
* [post_tags](#post_tags) - Add tags to an existing revision
* [set_visibility](#set_visibility) - Set visibility of a namespace with an existing metadata entry
* [list_remote_sources](#list_remote_sources) - Get remote sources attached to a particular namespace
* [create_remote_source](#create_remote_source) - Configure a new remote source
* [get_manifest](#get_manifest) - Get manifest for a particular reference
* [get_blob](#get_blob) - Get blob for a particular digest

## preflight

Get access token for communicating with OCI distribution endpoints

### Example Usage

<!-- UsageSnippet language="ruby" operationID="preflight" method="post" path="/v1/artifacts/preflight" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = 

res = s.artifacts.preflight(request: req)

unless res.preflight_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Models::Shared::PreflightRequest](../../models/shared/preflightrequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |

### Response

**[T.nilable(Models::Operations::PreflightResponse)](../../models/operations/preflightresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_namespaces

Each namespace contains many revisions.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getNamespaces" method="get" path="/v1/artifacts/namespaces" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.get_namespaces()

unless res.get_namespaces_response.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetNamespacesResponse)](../../models/operations/getnamespacesresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## set_archived

Set whether a namespace is archived

### Example Usage

<!-- UsageSnippet language="ruby" operationID="archiveNamespace" method="post" path="/v1/artifacts/namespaces/{namespace_name}/archive" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.set_archived(namespace_name: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                            | Type                                                                                                                 | Required                                                                                                             | Description                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `namespace_name`                                                                                                     | *::String*                                                                                                           | :heavy_check_mark:                                                                                                   | N/A                                                                                                                  |
| `request_body`                                                                                                       | [T.nilable(Models::Operations::ArchiveNamespaceRequestBody)](../../models/operations/archivenamespacerequestbody.md) | :heavy_minus_sign:                                                                                                   | Archived status                                                                                                      |

### Response

**[T.nilable(Models::Operations::ArchiveNamespaceResponse)](../../models/operations/archivenamespaceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_revisions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRevisions" method="get" path="/v1/artifacts/namespaces/{namespace_name}/revisions" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.get_revisions(namespace_name: '<value>')

unless res.get_revisions_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `namespace_name`                           | *::String*                                 | :heavy_check_mark:                         | N/A                                        |
| `next_page_token`                          | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Token to retrieve the next page of results |

### Response

**[T.nilable(Models::Operations::GetRevisionsResponse)](../../models/operations/getrevisionsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_tags

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTags" method="get" path="/v1/artifacts/namespaces/{namespace_name}/tags" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.get_tags(namespace_name: '<value>')

unless res.get_tags_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `namespace_name`   | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetTagsResponse)](../../models/operations/gettagsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## post_tags

Add tags to an existing revision

### Example Usage

<!-- UsageSnippet language="ruby" operationID="postTags" method="post" path="/v1/artifacts/namespaces/{namespace_name}/tags" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.post_tags(namespace_name: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `namespace_name`                                                     | *::String*                                                           | :heavy_check_mark:                                                   | N/A                                                                  |
| `add_tags`                                                           | [T.nilable(Models::Shared::AddTags)](../../models/shared/addtags.md) | :heavy_minus_sign:                                                   | A JSON representation of the tags to add                             |

### Response

**[T.nilable(Models::Operations::PostTagsResponse)](../../models/operations/posttagsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## set_visibility

Set visibility of a namespace with an existing metadata entry

### Example Usage

<!-- UsageSnippet language="ruby" operationID="setVisibility" method="post" path="/v1/artifacts/namespaces/{namespace_name}/visibility" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.set_visibility(namespace_name: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                      | Type                                                                                                           | Required                                                                                                       | Description                                                                                                    |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `namespace_name`                                                                                               | *::String*                                                                                                     | :heavy_check_mark:                                                                                             | N/A                                                                                                            |
| `request_body`                                                                                                 | [T.nilable(Models::Operations::SetVisibilityRequestBody)](../../models/operations/setvisibilityrequestbody.md) | :heavy_minus_sign:                                                                                             | Namespace visibility                                                                                           |

### Response

**[T.nilable(Models::Operations::SetVisibilityResponse)](../../models/operations/setvisibilityresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## list_remote_sources

Get remote sources attached to a particular namespace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRemoteSources" method="get" path="/v1/artifacts/remote_sources" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.list_remote_sources(namespace_name: '<value>')

unless res.remote_source.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `namespace_name`   | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::ListRemoteSourcesResponse)](../../models/operations/listremotesourcesresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create_remote_source

Configure a new remote source

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRemoteSource" method="post" path="/v1/artifacts/remote_sources" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = 

res = s.artifacts.create_remote_source(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `request`                                                           | [Models::Shared::RemoteSource](../../models/shared/remotesource.md) | :heavy_check_mark:                                                  | The request object to use for the request.                          |

### Response

**[T.nilable(Models::Operations::CreateRemoteSourceResponse)](../../models/operations/createremotesourceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_manifest

Get manifest for a particular reference

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getManifest" method="get" path="/v1/oci/v2/{organization_slug}/{workspace_slug}/{namespace_name}/manifests/{revision_reference}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.get_manifest(organization_slug: '<value>', workspace_slug: '<value>', namespace_name: '<value>', revision_reference: '<value>')

unless res.manifest.nil?
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

**[T.nilable(Models::Operations::GetManifestResponse)](../../models/operations/getmanifestresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_blob

Get blob for a particular digest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getBlob" method="get" path="/v1/oci/v2/{organization_slug}/{workspace_slug}/{namespace_name}/blobs/{digest}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.artifacts.get_blob(organization_slug: '<value>', workspace_slug: '<value>', namespace_name: '<value>', digest: '<value>')

unless res.blob.nil?
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

**[T.nilable(Models::Operations::GetBlobResponse)](../../models/operations/getblobresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |