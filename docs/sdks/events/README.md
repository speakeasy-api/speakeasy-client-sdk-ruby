# Events

## Overview

REST APIs for capturing event data

### Available Operations

* [search](#search) - Search events for a particular workspace by any field
* [post](#post) - Post events for a specific workspace
* [get_by_target](#get_by_target) - Load recent events for a particular workspace
* [get_targets](#get_targets) - Load targets for a particular workspace
* [get_targets_deprecated](#get_targets_deprecated) - Load targets for a particular workspace

## search

Search events for a particular workspace by any field

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Operations::SearchWorkspaceEventsRequest.new()
    
res = s.events.search(req)

if ! res.cli_event_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::OpenApiSDK::Operations::SearchWorkspaceEventsRequest](../../models/operations/searchworkspaceeventsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::SearchWorkspaceEventsResponse)](../../models/operations/searchworkspaceeventsresponse.md)**



## post

Sends an array of events to be stored for a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.events.post(request_body=[
  ::OpenApiSDK::Shared::CliEvent.new(
    id: "<id>",
    execution_id: "<id>",
    workspace_id: "<id>",
    speakeasy_api_key_name: "<value>",
    interaction_type: ::OpenApiSDK::Shared::InteractionType::TARGET_GENERATE,
    local_started_at: DateTime.iso8601('2024-03-02T10:07:28.113Z'),
    created_at: DateTime.iso8601('2023-09-09T05:59:33.876Z'),
    speakeasy_version: "<value>",
    success: false,
  ),
], workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request_body`                                                              | T::Array<[::OpenApiSDK::Shared::CliEvent](../../models/shared/clievent.md)> | :heavy_check_mark:                                                          | N/A                                                                         |
| `workspace_id`                                                              | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Unique identifier of the workspace.                                         |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostWorkspaceEventsResponse)](../../models/operations/postworkspaceeventsresponse.md)**



## get_by_target

Load recent events for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.events.get_by_target(target_id="<id>", workspace_id="<id>", after_created_at=DateTime.iso8601('2024-03-28T13:02:13.730Z'))

if ! res.cli_event_batch.nil?
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

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceEventsByTargetResponse)](../../models/operations/getworkspaceeventsbytargetresponse.md)**



## get_targets

Load targets for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.events.get_targets(after_last_event_created_at=DateTime.iso8601('2023-07-22T21:05:41.157Z'))

if ! res.target_sdk_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceTargetsResponse)](../../models/operations/getworkspacetargetsresponse.md)**



## get_targets_deprecated

Load targets for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.events.get_targets_deprecated(workspace_id="<id>", after_last_event_created_at=DateTime.iso8601('2022-09-16T02:27:30.906Z'))

if ! res.target_sdk_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `workspace_id`                                                         | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Unique identifier of the workspace.                                    |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceTargetsDeprecatedResponse)](../../models/operations/getworkspacetargetsdeprecatedresponse.md)**

