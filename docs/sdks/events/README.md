# Events


## Overview

REST APIs for capturing event data

### Available Operations

* [get_workspace_events_by_target](#get_workspace_events_by_target) - Load recent events for a particular workspace
* [get_workspace_targets](#get_workspace_targets) - Load targets for a particular workspace
* [post_workspace_events](#post_workspace_events) - Post events for a specific workspace
* [search_workspace_events](#search_workspace_events) - Search events for a particular workspace by any field

## get_workspace_events_by_target

Load recent events for a particular workspace

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


req = ::SpeakeasyClientSDK::Operations::GetWorkspaceEventsByTargetRequest.new(
  target_id: "<value>",
)
    
res = s.events.get_workspace_events_by_target(req)

if ! res.cli_event_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::SpeakeasyClientSDK::Operations::GetWorkspaceEventsByTargetRequest](../../models/operations/getworkspaceeventsbytargetrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetWorkspaceEventsByTargetResponse)](../../models/operations/getworkspaceeventsbytargetresponse.md)**


## get_workspace_targets

Load targets for a particular workspace

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


req = ::SpeakeasyClientSDK::Operations::GetWorkspaceTargetsRequest.new()
    
res = s.events.get_workspace_targets(req)

if ! res.target_sdk_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::SpeakeasyClientSDK::Operations::GetWorkspaceTargetsRequest](../../models/operations/getworkspacetargetsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetWorkspaceTargetsResponse)](../../models/operations/getworkspacetargetsresponse.md)**


## post_workspace_events

Sends an array of events to be stored for a particular workspace.

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


req = ::SpeakeasyClientSDK::Operations::PostWorkspaceEventsRequest.new(
  request_body: [
    ::SpeakeasyClientSDK::Shared::CliEvent.new(
      created_at: DateTime.iso8601('2024-11-21T06:58:42.120Z'),
      execution_id: "<value>",
      id: "<id>",
      interaction_type: ::SpeakeasyClientSDK::Shared::InteractionType::CLI_EXEC,
      local_started_at: DateTime.iso8601('2024-05-07T12:35:47.182Z'),
      speakeasy_api_key_name: "<value>",
      speakeasy_version: "<value>",
      success: false,
      workspace_id: "<value>",
    ),
  ],
)
    
res = s.events.post_workspace_events(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::SpeakeasyClientSDK::Operations::PostWorkspaceEventsRequest](../../models/operations/postworkspaceeventsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::PostWorkspaceEventsResponse)](../../models/operations/postworkspaceeventsresponse.md)**


## search_workspace_events

Search events for a particular workspace by any field

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


req = ::SpeakeasyClientSDK::Operations::SearchWorkspaceEventsRequest.new()
    
res = s.events.search_workspace_events(req)

if ! res.cli_event_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::SpeakeasyClientSDK::Operations::SearchWorkspaceEventsRequest](../../models/operations/searchworkspaceeventsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::SearchWorkspaceEventsResponse)](../../models/operations/searchworkspaceeventsresponse.md)**

