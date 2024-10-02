# speakeasy_client_sdk_ruby

Developer-friendly & type-safe Ruby SDK specifically catered to leverage *speakeasy_client_sdk_ruby* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=speakeasy-client-sdk-ruby&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


<br /><br />
> [!IMPORTANT]
> This SDK is not yet ready for production use. To complete setup please follow the steps outlined in your [workspace](https://app.speakeasy.com/org/speakeasy-self/speakeasy-self). Delete this section before > publishing to a package manager.

<!-- Start Summary [summary] -->
## Summary

Speakeasy API: The Speakeasy API allows teams to manage common operations with their APIs

For more information about the API: [The Speakeasy Platform Documentation](/docs)
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents

* [SDK Installation](#sdk-installation)
* [SDK Example Usage](#sdk-example-usage)
* [Available Resources and Operations](#available-resources-and-operations)
* [Server Selection](#server-selection)
<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install speakeasy_client_sdk_ruby
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.apis.get_all(op=::OpenApiSDK::Operations::Op.new(
  and_: false,
), metadata={
  "key": [
    "<value>",
  ],
})

if ! res.apis.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [Apiendpoints](docs/sdks/apiendpoints/README.md)

* [list](docs/sdks/apiendpoints/README.md#list) - Get all Api endpoints for a particular apiID.

### [Apis](docs/sdks/apis/README.md)

* [get_all](docs/sdks/apis/README.md#get_all) - Get a list of Apis for a given workspace
* [get_all_versions](docs/sdks/apis/README.md#get_all_versions) - Get all Api versions for a particular ApiEndpoint.
* [upsert](docs/sdks/apis/README.md#upsert) - Upsert an Api
* [delete](docs/sdks/apis/README.md#delete) - Delete an Api.
* [generate_open_api](docs/sdks/apis/README.md#generate_open_api) - Generate an OpenAPI specification for a particular Api.
* [generate_postman](docs/sdks/apis/README.md#generate_postman) - Generate a Postman collection for a particular Api.

### [Artifacts](docs/sdks/artifacts/README.md)

* [preflight](docs/sdks/artifacts/README.md#preflight) - Get access token for communicating with OCI distribution endpoints
* [get_namespaces](docs/sdks/artifacts/README.md#get_namespaces) - Each namespace contains many revisions.
* [get_revisions](docs/sdks/artifacts/README.md#get_revisions)
* [get_tags](docs/sdks/artifacts/README.md#get_tags)
* [post_tags](docs/sdks/artifacts/README.md#post_tags) - Add tags to an existing revision
* [get_manifest](docs/sdks/artifacts/README.md#get_manifest) - Get manifest for a particular reference
* [get_blob](docs/sdks/artifacts/README.md#get_blob) - Get blob for a particular digest

### [Auth](docs/sdks/auth/README.md)

* [validate_api_key](docs/sdks/auth/README.md#validate_api_key) - Validate the current api key.
* [get_user](docs/sdks/auth/README.md#get_user) - Get information about the current user.
* [get_access_token](docs/sdks/auth/README.md#get_access_token) - Get or refresh an access token for the current workspace.
* [get_allowances](docs/sdks/auth/README.md#get_allowances) - Get access allowances for a particular workspace

### [Embeds](docs/sdks/embeds/README.md)

* [get_access_token](docs/sdks/embeds/README.md#get_access_token) - Get an embed access token for the current workspace.
* [get_valid](docs/sdks/embeds/README.md#get_valid) - Get all valid embed access tokens for the current workspace.
* [delete](docs/sdks/embeds/README.md#delete) - Revoke an embed access EmbedToken.

### [Events](docs/sdks/events/README.md)

* [search](docs/sdks/events/README.md#search) - Search events for a particular workspace by any field
* [post](docs/sdks/events/README.md#post) - Post events for a specific workspace
* [get_by_target](docs/sdks/events/README.md#get_by_target) - Load recent events for a particular workspace
* [get_targets](docs/sdks/events/README.md#get_targets) - Load targets for a particular workspace
* [get_targets_deprecated](docs/sdks/events/README.md#get_targets_deprecated) - Load targets for a particular workspace

### [Github](docs/sdks/github/README.md)

* [check_access](docs/sdks/github/README.md#check_access)
* [check_publishing_p_rs](docs/sdks/github/README.md#check_publishing_p_rs)
* [check_publishing_secrets](docs/sdks/github/README.md#check_publishing_secrets)
* [store_publishing_secrets](docs/sdks/github/README.md#store_publishing_secrets)
* [configure_code_samples](docs/sdks/github/README.md#configure_code_samples)
* [configure_mintlify_repo](docs/sdks/github/README.md#configure_mintlify_repo)
* [configure_target](docs/sdks/github/README.md#configure_target)
* [trigger_action](docs/sdks/github/README.md#trigger_action)
* [get_action](docs/sdks/github/README.md#get_action)

### [Metadata](docs/sdks/metadata/README.md)

* [get](docs/sdks/metadata/README.md#get) - Get all metadata for a particular apiID and versionID.
* [insert_version](docs/sdks/metadata/README.md#insert_version) - Insert metadata for a particular apiID and versionID.
* [delete_version](docs/sdks/metadata/README.md#delete_version) - Delete metadata for a particular apiID and versionID.

### [Organizations](docs/sdks/organizations/README.md)

* [get_all](docs/sdks/organizations/README.md#get_all) - Get organizations for a user
* [create](docs/sdks/organizations/README.md#create) - Create an organization
* [get](docs/sdks/organizations/README.md#get) - Get organization
* [create_free_trial](docs/sdks/organizations/README.md#create_free_trial) - Create a free trial for an organization
* [get_usage](docs/sdks/organizations/README.md#get_usage) - Get billing usage summary for a particular organization

### [Reports](docs/sdks/reports/README.md)

* [upload](docs/sdks/reports/README.md#upload) - Upload a report.
* [get_signed_url](docs/sdks/reports/README.md#get_signed_url) - Get the signed access url for the linting reports for a particular document.
* [get_changes_signed_url](docs/sdks/reports/README.md#get_changes_signed_url) - Get the signed access url for the change reports for a particular document.

### [Requests](docs/sdks/requests/README.md)

* [query](docs/sdks/requests/README.md#query) - Query the event log to retrieve a list of requests.
* [get](docs/sdks/requests/README.md#get) - Get information about a particular request.
* [generate_postman_collection](docs/sdks/requests/README.md#generate_postman_collection) - Generate a Postman collection for a particular request.

### [Schemas](docs/sdks/schemas/README.md)

* [get_latest](docs/sdks/schemas/README.md#get_latest) - Get information about the latest schema.
* [post](docs/sdks/schemas/README.md#post) - Register a schema.
* [download](docs/sdks/schemas/README.md#download) - Download the latest schema for a particular apiID.
* [get_diff](docs/sdks/schemas/README.md#get_diff) - Get a diff of two schema revisions for an Api.
* [delete](docs/sdks/schemas/README.md#delete) - Delete a particular schema revision for an Api.
* [get_revision](docs/sdks/schemas/README.md#get_revision) - Get information about a particular schema revision for an Api.
* [download_revision](docs/sdks/schemas/README.md#download_revision) - Download a particular schema revision for an Api.
* [get](docs/sdks/schemas/README.md#get) - Get information about all schemas associated with a particular apiID.

### [ShortURLs](docs/sdks/shorturls/README.md)

* [create](docs/sdks/shorturls/README.md#create) - Shorten a URL.


### [SpeakeasyClientSDKApiEndpoints](docs/sdks/speakeasyclientsdkapiendpoints/README.md)

* [get_all](docs/sdks/speakeasyclientsdkapiendpoints/README.md#get_all) - Get all ApiEndpoints for a particular apiID and versionID.
* [find](docs/sdks/speakeasyclientsdkapiendpoints/README.md#find) - Find an ApiEndpoint via its displayName.
* [delete](docs/sdks/speakeasyclientsdkapiendpoints/README.md#delete) - Delete an ApiEndpoint.
* [get](docs/sdks/speakeasyclientsdkapiendpoints/README.md#get) - Get an ApiEndpoint.
* [upsert](docs/sdks/speakeasyclientsdkapiendpoints/README.md#upsert) - Upsert an ApiEndpoint.
* [generate_open_api_spec](docs/sdks/speakeasyclientsdkapiendpoints/README.md#generate_open_api_spec) - Generate an OpenAPI specification for a particular ApiEndpoint.
* [generate_postman_collection](docs/sdks/speakeasyclientsdkapiendpoints/README.md#generate_postman_collection) - Generate a Postman collection for a particular ApiEndpoint.

### [Suggest](docs/sdks/suggest/README.md)

* [openapi](docs/sdks/suggest/README.md#openapi) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [generate](docs/sdks/suggest/README.md#generate) - Generate suggestions for improving an OpenAPI document.
* [openapi_registry](docs/sdks/suggest/README.md#openapi_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

### [Workspaces](docs/sdks/workspaces/README.md)

* [get_all](docs/sdks/workspaces/README.md#get_all) - Get workspaces for a user
* [get](docs/sdks/workspaces/README.md#get) - Get workspace by context
* [create](docs/sdks/workspaces/README.md#create) - Create a workspace
* [get_by_id](docs/sdks/workspaces/README.md#get_by_id) - Get workspace
* [update_details](docs/sdks/workspaces/README.md#update_details) - Update workspace details
* [get_settings](docs/sdks/workspaces/README.md#get_settings) - Get workspace settings
* [update_settings](docs/sdks/workspaces/README.md#update_settings) - Update workspace settings
* [get_team](docs/sdks/workspaces/README.md#get_team) - Get team members for a particular workspace
* [grant_access](docs/sdks/workspaces/README.md#grant_access) - Grant a user access to a particular workspace
* [revoke_access](docs/sdks/workspaces/README.md#revoke_access) - Revoke a user's access to a particular workspace
* [get_tokens](docs/sdks/workspaces/README.md#get_tokens) - Get tokens for a particular workspace
* [create_token](docs/sdks/workspaces/README.md#create_token) - Create a token for a particular workspace
* [delete_token](docs/sdks/workspaces/README.md#delete_token) - Delete a token for a particular workspace
* [get_feature_flags](docs/sdks/workspaces/README.md#get_feature_flags) - Get workspace feature flags

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Name

You can override the default server globally by passing a server name to the `server: str` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the names associated with the available servers:

| Name | Server | Variables |
| ----- | ------ | --------- |
| `prod` | `https://api.prod.speakeasyapi.dev` | None |



### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=speakeasy-client-sdk-ruby&utm_campaign=ruby)
