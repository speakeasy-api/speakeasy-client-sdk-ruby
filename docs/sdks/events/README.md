# Events
(*events*)

## Overview

REST APIs for managing events captured by a speakeasy binary (CLI, GitHub Action etc)

### Available Operations

* [search](#search) - Search events for a particular workspace by any field
* [post](#post) - Post events for a specific workspace
* [get_by_target](#get_by_target) - Load recent events for a particular workspace
* [get_targets](#get_targets) - Load targets for a particular workspace
* [get_targets_deprecated](#get_targets_deprecated) - Load targets for a particular workspace

## search

Search events for a particular workspace by any field

### Example Usage

<!-- UsageSnippet language="ruby" operationID="searchWorkspaceEvents" method="get" path="/v1/workspace/{workspace_id}/events" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::SearchWorkspaceEventsRequest.new()

res = s.events.search(request: req)

unless res.cli_event_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::SearchWorkspaceEventsRequest](../../models/operations/searchworkspaceeventsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::SearchWorkspaceEventsResponse)](../../models/operations/searchworkspaceeventsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## post

Sends an array of events to be stored for a particular workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="postWorkspaceEvents" method="post" path="/v1/workspace/{workspace_id}/events" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.events.post(request_body: [
  Models::Shared::CliEvent.new(
    id: '<id>',
    execution_id: '<id>',
    workspace_id: '<id>',
    speakeasy_api_key_name: '<value>',
    interaction_type: Models::Shared::InteractionType::CI_EXEC,
    local_started_at: DateTime.iso8601('2024-12-22T21:01:06.740Z'),
    created_at: DateTime.iso8601('2024-01-24T01:13:51.002Z'),
    speakeasy_version: '<value>',
    success: true,
  ),
])

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `request_body`                                                        | T::Array<[Models::Shared::CliEvent](../../models/shared/clievent.md)> | :heavy_check_mark:                                                    | N/A                                                                   |
| `workspace_id`                                                        | *T.nilable(::String)*                                                 | :heavy_minus_sign:                                                    | Unique identifier of the workspace.                                   |

### Response

**[T.nilable(Models::Operations::PostWorkspaceEventsResponse)](../../models/operations/postworkspaceeventsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## get_by_target

Load recent events for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceEventsByTarget" method="get" path="/v1/workspace/{workspace_id}/events/targets/{target_id}/events" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.events.get_by_target(target_id: '<id>')

unless res.cli_event_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `target_id`                                                                                                       | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | Filter to only return events corresponding to a particular gen_lock_id (gen_lock_id uniquely identifies a target) |
| `workspace_id`                                                                                                    | *T.nilable(::String)*                                                                                             | :heavy_minus_sign:                                                                                                | Unique identifier of the workspace.                                                                               |
| `after_created_at`                                                                                                | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                              | :heavy_minus_sign:                                                                                                | Filter to only return events created after this timestamp                                                         |

### Response

**[T.nilable(Models::Operations::GetWorkspaceEventsByTargetResponse)](../../models/operations/getworkspaceeventsbytargetresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## get_targets

Load targets for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceTargets" method="get" path="/v1/workspace/events/targets" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.events.get_targets()

unless res.target_sdk_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTargetsResponse)](../../models/operations/getworkspacetargetsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## get_targets_deprecated

Load targets for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceTargetsDeprecated" method="get" path="/v1/workspace/{workspace_id}/events/targets" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.events.get_targets_deprecated()

unless res.target_sdk_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `workspace_id`                                                         | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Unique identifier of the workspace.                                    |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTargetsDeprecatedResponse)](../../models/operations/getworkspacetargetsdeprecatedresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |