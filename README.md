<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install speakeasy_client_sdk_ruby
```
<!-- End SDK Installation [installation] -->

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
* [Global Parameters](#global-parameters)
* [Server Selection](#server-selection)
<!-- End Table of Contents [toc] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetApisRequest.new()
    
res = s.apis.get_apis(req)

if ! res.apis.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [ApiEndpoints](docs/sdks/apiendpoints/README.md)

* [delete_api_endpoint](docs/sdks/apiendpoints/README.md#delete_api_endpoint) - Delete an ApiEndpoint.
* [find_api_endpoint](docs/sdks/apiendpoints/README.md#find_api_endpoint) - Find an ApiEndpoint via its displayName.
* [generate_open_api_spec_for_api_endpoint](docs/sdks/apiendpoints/README.md#generate_open_api_spec_for_api_endpoint) - Generate an OpenAPI specification for a particular ApiEndpoint.
* [generate_postman_collection_for_api_endpoint](docs/sdks/apiendpoints/README.md#generate_postman_collection_for_api_endpoint) - Generate a Postman collection for a particular ApiEndpoint.
* [get_all_api_endpoints](docs/sdks/apiendpoints/README.md#get_all_api_endpoints) - Get all Api endpoints for a particular apiID.
* [get_all_for_version_api_endpoints](docs/sdks/apiendpoints/README.md#get_all_for_version_api_endpoints) - Get all ApiEndpoints for a particular apiID and versionID.
* [get_api_endpoint](docs/sdks/apiendpoints/README.md#get_api_endpoint) - Get an ApiEndpoint.
* [upsert_api_endpoint](docs/sdks/apiendpoints/README.md#upsert_api_endpoint) - Upsert an ApiEndpoint.

### [Apis](docs/sdks/apis/README.md)

* [delete_api](docs/sdks/apis/README.md#delete_api) - Delete an Api.
* [generate_open_api_spec](docs/sdks/apis/README.md#generate_open_api_spec) - Generate an OpenAPI specification for a particular Api.
* [generate_postman_collection](docs/sdks/apis/README.md#generate_postman_collection) - Generate a Postman collection for a particular Api.
* [get_all_api_versions](docs/sdks/apis/README.md#get_all_api_versions) - Get all Api versions for a particular ApiEndpoint.
* [get_apis](docs/sdks/apis/README.md#get_apis) - Get a list of Apis for a given workspace
* [upsert_api](docs/sdks/apis/README.md#upsert_api) - Upsert an Api

### [Artifacts](docs/sdks/artifacts/README.md)

* [get_blob](docs/sdks/artifacts/README.md#get_blob) - Get blob for a particular digest
* [get_manifest](docs/sdks/artifacts/README.md#get_manifest) - Get manifest for a particular reference
* [get_namespaces](docs/sdks/artifacts/README.md#get_namespaces) - Each namespace contains many revisions.
* [get_oas_summary](docs/sdks/artifacts/README.md#get_oas_summary)
* [get_revisions](docs/sdks/artifacts/README.md#get_revisions)
* [get_tags](docs/sdks/artifacts/README.md#get_tags)
* [post_tags](docs/sdks/artifacts/README.md#post_tags) - Add tags to an existing revision
* [preflight](docs/sdks/artifacts/README.md#preflight) - Get access token for communicating with OCI distribution endpoints

### [Auth](docs/sdks/auth/README.md)

* [get_access_token](docs/sdks/auth/README.md#get_access_token) - Get or refresh an access token for the current workspace.
* [get_user](docs/sdks/auth/README.md#get_user) - Get information about the current user.
* [get_workspace_access](docs/sdks/auth/README.md#get_workspace_access) - Get access allowances for a particular workspace
* [validate_api_key](docs/sdks/auth/README.md#validate_api_key) - Validate the current api key.

### [Embeds](docs/sdks/embeds/README.md)

* [get_embed_access_token](docs/sdks/embeds/README.md#get_embed_access_token) - Get an embed access token for the current workspace.
* [get_valid_embed_access_tokens](docs/sdks/embeds/README.md#get_valid_embed_access_tokens) - Get all valid embed access tokens for the current workspace.
* [revoke_embed_access_token](docs/sdks/embeds/README.md#revoke_embed_access_token) - Revoke an embed access EmbedToken.

### [Events](docs/sdks/events/README.md)

* [get_workspace_events_by_target](docs/sdks/events/README.md#get_workspace_events_by_target) - Load recent events for a particular workspace
* [get_workspace_targets](docs/sdks/events/README.md#get_workspace_targets) - Load targets for a particular workspace
* [post_workspace_events](docs/sdks/events/README.md#post_workspace_events) - Post events for a specific workspace
* [search_workspace_events](docs/sdks/events/README.md#search_workspace_events) - Search events for a particular workspace by any field

### [Github](docs/sdks/github/README.md)

* [check_access](docs/sdks/github/README.md#check_access)
* [configure_code_samples](docs/sdks/github/README.md#configure_code_samples)
* [configure_mintlify_repo](docs/sdks/github/README.md#configure_mintlify_repo)
* [configure_target](docs/sdks/github/README.md#configure_target)
* [fetch_publishing_p_rs](docs/sdks/github/README.md#fetch_publishing_p_rs)
* [get_action](docs/sdks/github/README.md#get_action)
* [github_check_publishing_secrets](docs/sdks/github/README.md#github_check_publishing_secrets)
* [github_store_publishing_secrets](docs/sdks/github/README.md#github_store_publishing_secrets)
* [trigger_action](docs/sdks/github/README.md#trigger_action)

### [Metadata](docs/sdks/metadata/README.md)

* [delete_version_metadata](docs/sdks/metadata/README.md#delete_version_metadata) - Delete metadata for a particular apiID and versionID.
* [get_version_metadata](docs/sdks/metadata/README.md#get_version_metadata) - Get all metadata for a particular apiID and versionID.
* [insert_version_metadata](docs/sdks/metadata/README.md#insert_version_metadata) - Insert metadata for a particular apiID and versionID.

### [Organizations](docs/sdks/organizations/README.md)

* [create_free_trial](docs/sdks/organizations/README.md#create_free_trial) - Create a free trial for an organization
* [get_organization](docs/sdks/organizations/README.md#get_organization) - Get organization
* [get_organization_usage](docs/sdks/organizations/README.md#get_organization_usage) - Get billing usage summary for a particular organization
* [get_organizations](docs/sdks/organizations/README.md#get_organizations) - Get organizations for a user

### [Reports](docs/sdks/reports/README.md)

* [get_changes_report_signed_url](docs/sdks/reports/README.md#get_changes_report_signed_url) - Get the signed access url for the change reports for a particular document.
* [get_linting_report_signed_url](docs/sdks/reports/README.md#get_linting_report_signed_url) - Get the signed access url for the linting reports for a particular document.
* [upload_report](docs/sdks/reports/README.md#upload_report) - Upload a report.

### [Requests](docs/sdks/requests/README.md)

* [generate_request_postman_collection](docs/sdks/requests/README.md#generate_request_postman_collection) - Generate a Postman collection for a particular request.
* [get_request_from_event_log](docs/sdks/requests/README.md#get_request_from_event_log) - Get information about a particular request.
* [query_event_log](docs/sdks/requests/README.md#query_event_log) - Query the event log to retrieve a list of requests.

### [Schemas](docs/sdks/schemas/README.md)

* [delete_schema](docs/sdks/schemas/README.md#delete_schema) - Delete a particular schema revision for an Api.
* [download_schema](docs/sdks/schemas/README.md#download_schema) - Download the latest schema for a particular apiID.
* [download_schema_revision](docs/sdks/schemas/README.md#download_schema_revision) - Download a particular schema revision for an Api.
* [get_schema](docs/sdks/schemas/README.md#get_schema) - Get information about the latest schema.
* [get_schema_diff](docs/sdks/schemas/README.md#get_schema_diff) - Get a diff of two schema revisions for an Api.
* [get_schema_revision](docs/sdks/schemas/README.md#get_schema_revision) - Get information about a particular schema revision for an Api.
* [get_schemas](docs/sdks/schemas/README.md#get_schemas) - Get information about all schemas associated with a particular apiID.
* [register_schema](docs/sdks/schemas/README.md#register_schema) - Register a schema.


### [ShortURLs](docs/sdks/shorturls/README.md)

* [create](docs/sdks/shorturls/README.md#create) - Shorten a URL.

### [Suggest](docs/sdks/suggest/README.md)

* [suggest](docs/sdks/suggest/README.md#suggest) - Generate suggestions for improving an OpenAPI document.
* [suggest_open_api](docs/sdks/suggest/README.md#suggest_open_api) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [suggest_open_api_registry](docs/sdks/suggest/README.md#suggest_open_api_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

### [Workspaces](docs/sdks/workspaces/README.md)

* [get_workspace](docs/sdks/workspaces/README.md#get_workspace) - Get workspace
* [get_workspace_feature_flags](docs/sdks/workspaces/README.md#get_workspace_feature_flags) - Get workspace feature flags

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

<!-- Start Global Parameters [global-parameters] -->
## Global Parameters

A parameter is configured globally. This parameter may be set on the SDK client instance itself during initialization. When configured as an option during SDK initialization, This global value will be used as the default on the operations that use it. When such operations are called, there is a place in each to override the global value, if needed.

For example, you can set `workspaceID` to `"<value>"` at SDK initialization and then you do not have to pass the same value on calls to operations like `get_workspace`. But if you want to do so you may, which will locally override the global setting. See the example code below for a demonstration.


### Available Globals

The following global parameter is available.

| Name | Type | Required | Description |
| ---- | ---- |:--------:| ----------- |
| workspace_id | ::String |  | The workspace_id parameter. |


### Example

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
<!-- End Global Parameters [global-parameters] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->



### SDK Generated by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
