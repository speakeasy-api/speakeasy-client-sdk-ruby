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

Speakeasy API: The Subscriptions API manages subscriptions for CLI and registry events

For more information about the API: [The Speakeasy Platform Documentation](/docs)
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [speakeasy_client_sdk_ruby](#speakeasyclientsdkruby)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Global Parameters](#global-parameters)
  * [Retries](#retries)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

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

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security schemes globally:

| Name                   | Type   | Scheme      |
| ---------------------- | ------ | ----------- |
| `api_key`              | apiKey | API key     |
| `workspace_identifier` | apiKey | API key     |
| `bearer`               | http   | HTTP Bearer |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. The selected scheme will be used by default to authenticate with the API for all operations that support it. For example:
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [artifacts](docs/sdks/artifacts/README.md)

* [preflight](docs/sdks/artifacts/README.md#preflight) - Get access token for communicating with OCI distribution endpoints
* [get_namespaces](docs/sdks/artifacts/README.md#get_namespaces) - Each namespace contains many revisions.
* [set_archived](docs/sdks/artifacts/README.md#set_archived) - Set whether a namespace is archived
* [get_revisions](docs/sdks/artifacts/README.md#get_revisions)
* [get_tags](docs/sdks/artifacts/README.md#get_tags)
* [post_tags](docs/sdks/artifacts/README.md#post_tags) - Add tags to an existing revision
* [set_visibility](docs/sdks/artifacts/README.md#set_visibility) - Set visibility of a namespace with an existing metadata entry
* [list_remote_sources](docs/sdks/artifacts/README.md#list_remote_sources) - Get remote sources attached to a particular namespace
* [create_remote_source](docs/sdks/artifacts/README.md#create_remote_source) - Configure a new remote source
* [get_manifest](docs/sdks/artifacts/README.md#get_manifest) - Get manifest for a particular reference
* [get_blob](docs/sdks/artifacts/README.md#get_blob) - Get blob for a particular digest

### [auth](docs/sdks/auth/README.md)

* [validate_api_key](docs/sdks/auth/README.md#validate_api_key) - Validate the current api key.
* [get_user](docs/sdks/auth/README.md#get_user) - Get information about the current user.
* [get_access_token](docs/sdks/auth/README.md#get_access_token) - Get or refresh an access token for the current workspace.
* [get_allowances](docs/sdks/auth/README.md#get_allowances) - Get access allowances for a particular workspace

### [code_samples](docs/sdks/codesamples/README.md)

* [generate_code_sample_preview](docs/sdks/codesamples/README.md#generate_code_sample_preview) - Generate Code Sample previews from a file and configuration parameters.
* [generate_code_sample_preview_async](docs/sdks/codesamples/README.md#generate_code_sample_preview_async) - Initiate asynchronous Code Sample preview generation from a file and configuration parameters, receiving an async JobID response for polling.
* [get_code_sample_preview_async](docs/sdks/codesamples/README.md#get_code_sample_preview_async) - Poll for the result of an asynchronous Code Sample preview generation.

### [events](docs/sdks/events/README.md)

* [search](docs/sdks/events/README.md#search) - Search events for a particular workspace by any field
* [post](docs/sdks/events/README.md#post) - Post events for a specific workspace
* [get_by_target](docs/sdks/events/README.md#get_by_target) - Load recent events for a particular workspace
* [get_targets](docs/sdks/events/README.md#get_targets) - Load targets for a particular workspace
* [get_targets_deprecated](docs/sdks/events/README.md#get_targets_deprecated) - Load targets for a particular workspace

### [github](docs/sdks/github/README.md)

* [get_setup](docs/sdks/github/README.md#get_setup)
* [check_access](docs/sdks/github/README.md#check_access)
* [link_github](docs/sdks/github/README.md#link_github)
* [check_publishing_p_rs](docs/sdks/github/README.md#check_publishing_p_rs)
* [check_publishing_secrets](docs/sdks/github/README.md#check_publishing_secrets)
* [store_publishing_secrets](docs/sdks/github/README.md#store_publishing_secrets)
* [configure_code_samples](docs/sdks/github/README.md#configure_code_samples)
* [configure_mintlify_repo](docs/sdks/github/README.md#configure_mintlify_repo)
* [configure_target](docs/sdks/github/README.md#configure_target)
* [trigger_action](docs/sdks/github/README.md#trigger_action)
* [get_action](docs/sdks/github/README.md#get_action)

### [organizations](docs/sdks/organizations/README.md)

* [get_all](docs/sdks/organizations/README.md#get_all) - Get organizations for a user
* [create](docs/sdks/organizations/README.md#create) - Create an organization
* [get](docs/sdks/organizations/README.md#get) - Get organization
* [create_free_trial](docs/sdks/organizations/README.md#create_free_trial) - Create a free trial for an organization
* [get_usage](docs/sdks/organizations/README.md#get_usage) - Get billing usage summary for a particular organization
* [create_billing_add_ons](docs/sdks/organizations/README.md#create_billing_add_ons) - Create billing add ons
* [get_billing_add_ons](docs/sdks/organizations/README.md#get_billing_add_ons) - Get billing add ons
* [delete_billing_add_on](docs/sdks/organizations/README.md#delete_billing_add_on) - Delete billing add ons

### [publishing_tokens](docs/sdks/publishingtokens/README.md)

* [list](docs/sdks/publishingtokens/README.md#list) - Get publishing tokens for a workspace
* [create](docs/sdks/publishingtokens/README.md#create) - Create a publishing token for a workspace
* [get](docs/sdks/publishingtokens/README.md#get) - Get a specific publishing token
* [update](docs/sdks/publishingtokens/README.md#update) - Updates the validitity period of a publishing token
* [delete](docs/sdks/publishingtokens/README.md#delete) - Delete a specific publishing token
* [resolve_target](docs/sdks/publishingtokens/README.md#resolve_target) - Get a specific publishing token target
* [resolve_metadata](docs/sdks/publishingtokens/README.md#resolve_metadata) - Get metadata about the token

### [reports](docs/sdks/reports/README.md)

* [upload](docs/sdks/reports/README.md#upload) - Upload a report.
* [get_signed_url](docs/sdks/reports/README.md#get_signed_url) - Get the signed access url for the linting reports for a particular document.
* [get_changes_signed_url](docs/sdks/reports/README.md#get_changes_signed_url) - Get the signed access url for the change reports for a particular document.

### [schema_store](docs/sdks/schemastore/README.md)

* [get_schema_store_item](docs/sdks/schemastore/README.md#get_schema_store_item) - Get a OAS schema from the schema store
* [create_schema_store_item](docs/sdks/schemastore/README.md#create_schema_store_item) - Create a schema in the schema store

### [short_ur_ls](docs/sdks/shorturls/README.md)

* [create](docs/sdks/shorturls/README.md#create) - Shorten a URL.


### [subscriptions](docs/sdks/subscriptions/README.md)

* [ignore_subscription_namespace](docs/sdks/subscriptions/README.md#ignore_subscription_namespace) - Ignored a namespace for a subscription
* [activate_subscription_namespace](docs/sdks/subscriptions/README.md#activate_subscription_namespace) - Activate an ignored namespace for a subscription

### [suggest](docs/sdks/suggest/README.md)

* [openapi](docs/sdks/suggest/README.md#openapi) - (DEPRECATED) Generate suggestions for improving an OpenAPI document.
* [generate](docs/sdks/suggest/README.md#generate) - Generate suggestions for improving an OpenAPI document.
* [suggest_items](docs/sdks/suggest/README.md#suggest_items) - Generate generic suggestions for a list of items.
* [openapi_registry](docs/sdks/suggest/README.md#openapi_registry) - Generate suggestions for improving an OpenAPI document stored in the registry.

### [workspaces](docs/sdks/workspaces/README.md)

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
* [set_feature_flags](docs/sdks/workspaces/README.md#set_feature_flags) - Set workspace feature flags
* [get_feature_flags](docs/sdks/workspaces/README.md#get_feature_flags) - Get workspace feature flags

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Global Parameters [global-parameters] -->
## Global Parameters

A parameter is configured globally. This parameter may be set on the SDK client instance itself during initialization. When configured as an option during SDK initialization, This global value will be used as the default on the operations that use it. When such operations are called, there is a place in each to override the global value, if needed.

For example, you can set `workspace_id` to `'<id>'` at SDK initialization and then you do not have to pass the same value on calls to operations like `get_access_token`. But if you want to do so you may, which will locally override the global setting. See the example code below for a demonstration.


### Available Globals

The following global parameter is available.

| Name         | Type     | Description                 |
| ------------ | -------- | --------------------------- |
| workspace_id | ::String | The workspace_id parameter. |

### Example

```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
    )

res = s.auth.get_access_token(workspace_id: '<id>')

unless res.access_token.nil?
  # handle response
end

```
<!-- End Global Parameters [global-parameters] -->

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries. If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API. However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a `RetryConfig` object to the call:
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.get_allowances()

unless res.access_details.nil?
  # handle response
end

```

If you'd like to override the default retry strategy for all operations that support retries, you can use the `retry_config` optional parameter when initializing the SDK:
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      retry_config: Utils::RetryConfig.new(
        backoff: Utils::BackoffStrategy.new(
          exponent: 1.1,
          initial_interval: 1,
          max_elapsed_time: 100,
          max_interval: 50
        ),
        retry_connection_errors: false,
        strategy: 'backoff'
      ),
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.get_allowances()

unless res.access_details.nil?
  # handle response
end

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

Handling errors in this SDK should largely match your expectations. All operations return a response object or raise an error.

By default an API error will raise a `Errors::APIError`, which has the following properties:

| Property       | Type                                    | Description           |
|----------------|-----------------------------------------|-----------------------|
| `message`     | *string*                                 | The error message     |
| `status_code`  | *int*                                   | The HTTP status code  |
| `raw_response` | *Faraday::Response*                     | The raw HTTP response |
| `body`        | *string*                                 | The response content  |

When custom error responses are specified for an operation, the SDK may also throw their associated exception. You can refer to respective *Errors* tables in SDK docs for more details on possible exception types for each operation. For example, the `validate_api_key` method throws the following exceptions:

| Error Type            | Status Code | Content Type     |
| --------------------- | ----------- | ---------------- |
| Models::Errors::Error | 4XX         | application/json |
| Errors::APIError      | 5XX         | \*/\*            |

### Example

```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

begin
    res = s.auth.validate_api_key()

    unless res.api_key_details.nil?
      # handle response
    end
rescue Models::Errors::Error => e
  # handle e.container data
  raise e
rescue Errors::APIError => e
  # handle default exception
  raise e
end

```
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Select Server by Name

You can override the default server globally by passing a server name to the `server (Symbol)` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the names associated with the available servers:

| Name   | Server                           | Description |
| ------ | -------------------------------- | ----------- |
| `prod` | `https://api.prod.speakeasy.com` |             |

#### Example

```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      server: "prod",
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      server_url: 'https://api.prod.speakeasy.com',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.auth.validate_api_key()

unless res.api_key_details.nil?
  # handle response
end

```
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
