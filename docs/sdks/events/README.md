# Events


## Overview

REST APIs for capturing event data

### Available Operations

* [post_workspace_events](#post_workspace_events) - Post events for a specific workspace

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

