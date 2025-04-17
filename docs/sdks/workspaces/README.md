# Workspaces
(*workspaces*)

## Overview

REST APIs for managing Workspaces (speakeasy tenancy)

### Available Operations

* [get_all](#get_all) - Get workspaces for a user
* [get](#get) - Get workspace by context
* [create](#create) - Create a workspace
* [get_by_id](#get_by_id) - Get workspace
* [update_details](#update_details) - Update workspace details
* [get_settings](#get_settings) - Get workspace settings
* [update_settings](#update_settings) - Update workspace settings
* [get_team](#get_team) - Get team members for a particular workspace
* [grant_access](#grant_access) - Grant a user access to a particular workspace
* [revoke_access](#revoke_access) - Revoke a user's access to a particular workspace
* [get_tokens](#get_tokens) - Get tokens for a particular workspace
* [create_token](#create_token) - Create a token for a particular workspace
* [delete_token](#delete_token) - Delete a token for a particular workspace
* [set_feature_flags](#set_feature_flags) - Set workspace feature flags
* [get_feature_flags](#get_feature_flags) - Get workspace feature flags

## get_all

Returns a list of workspaces a user has access too

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_all()

if ! res.workspaces.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetWorkspacesResponse)](../../models/operations/getworkspacesresponse.md)**



## get

Get information about a particular workspace by context.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get()

if ! res.workspace_and_organization.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetWorkspaceByContextResponse)](../../models/operations/getworkspacebycontextresponse.md)**



## create

Creates a workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::Workspace.new(
  created_at: DateTime.iso8601('2024-06-17T07:14:55.338Z'),
  id: "<id>",
  name: "<value>",
  organization_id: "<id>",
  slug: "<value>",
  updated_at: DateTime.iso8601('2024-11-30T17:06:07.804Z'),
  verified: false,
)

res = s.workspaces.create(req)

if ! res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `request`                                                     | [Models::Shared::Workspace](../../models/shared/workspace.md) | :heavy_check_mark:                                            | The request object to use for the request.                    |

### Response

**[T.nilable(Models::Operations::CreateWorkspaceResponse)](../../models/operations/createworkspaceresponse.md)**



## get_by_id

Get information about a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_by_id(workspace_id="<id>")

if ! res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**



## update_details

Update information about a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.update_details(workspace=Models::Shared::Workspace.new(
  created_at: DateTime.iso8601('2025-01-31T20:44:31.776Z'),
  id: "<id>",
  name: "<value>",
  organization_id: "<id>",
  slug: "<value>",
  updated_at: DateTime.iso8601('2024-08-03T18:26:06.739Z'),
  verified: false,
), workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `workspace`                                                   | [Models::Shared::Workspace](../../models/shared/workspace.md) | :heavy_check_mark:                                            | The workspace details to update.                              |
| `workspace_id`                                                | *T.nilable(::String)*                                         | :heavy_minus_sign:                                            | Unique identifier of the workspace.                           |

### Response

**[T.nilable(Models::Operations::UpdateWorkspaceDetailsResponse)](../../models/operations/updateworkspacedetailsresponse.md)**



## get_settings

Get settings about a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_settings(workspace_id="<id>")

if ! res.workspace_settings.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceSettingsResponse)](../../models/operations/getworkspacesettingsresponse.md)**



## update_settings

Update settings about a particular workspace.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.update_settings(workspace_settings=Models::Shared::WorkspaceSettings.new(
  workspace_id: "<id>",
  webhook_url: "https://last-suspension.info/",
  created_at: DateTime.iso8601('2024-12-28T06:46:35.807Z'),
  updated_at: DateTime.iso8601('2025-02-03T10:37:56.725Z'),
), workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `workspace_settings`                                                          | [Models::Shared::WorkspaceSettings](../../models/shared/workspacesettings.md) | :heavy_check_mark:                                                            | The workspace settings to update.                                             |
| `workspace_id`                                                                | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Unique identifier of the workspace.                                           |

### Response

**[T.nilable(Models::Operations::UpdateWorkspaceSettingsResponse)](../../models/operations/updateworkspacesettingsresponse.md)**



## get_team

Get team members for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_team(workspace_id="<id>")

if ! res.workspace_team_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTeamResponse)](../../models/operations/getworkspaceteamresponse.md)**



## grant_access

Grant a user access to a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.grant_access(email="Lucinda.Batz8@hotmail.com", workspace_id="<id>")

if ! res.workspace_invite_response.nil?
  # handle response
end

```

### Parameters

| Parameter                             | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `email`                               | *::String*                            | :heavy_check_mark:                    | Email of the user to grant access to. |
| `workspace_id`                        | *T.nilable(::String)*                 | :heavy_minus_sign:                    | Unique identifier of the workspace.   |

### Response

**[T.nilable(Models::Operations::GrantUserAccessToWorkspaceResponse)](../../models/operations/grantuseraccesstoworkspaceresponse.md)**



## revoke_access

Revoke a user's access to a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.revoke_access(user_id="<id>", workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `user_id`                           | *::String*                          | :heavy_check_mark:                  | Unique identifier of the user.      |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::RevokeUserAccessToWorkspaceResponse)](../../models/operations/revokeuseraccesstoworkspaceresponse.md)**



## get_tokens

Get tokens for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_tokens(workspace_id="<id>")

if ! res.workspace_tokens.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTokensResponse)](../../models/operations/getworkspacetokensresponse.md)**



## create_token

Create a token for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.create_token(workspace_token=Models::Shared::WorkspaceToken.new(
  id: "<id>",
  name: "<value>",
  workspace_id: "<id>",
  alg: "<value>",
  key: "<key>",
  created_at: DateTime.iso8601('2023-08-16T02:33:00.784Z'),
), workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `workspace_token`                                                       | [Models::Shared::WorkspaceToken](../../models/shared/workspacetoken.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `workspace_id`                                                          | *T.nilable(::String)*                                                   | :heavy_minus_sign:                                                      | Unique identifier of the workspace.                                     |

### Response

**[T.nilable(Models::Operations::CreateWorkspaceTokenResponse)](../../models/operations/createworkspacetokenresponse.md)**



## delete_token

Delete a token for a particular workspace

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.delete_token(token_id="<id>", workspace_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `token_id`                          | *::String*                          | :heavy_check_mark:                  | Unique identifier of the token.     |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::DeleteWorkspaceTokenResponse)](../../models/operations/deleteworkspacetokenresponse.md)**



## set_feature_flags

Set workspace feature flags

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::WorkspaceFeatureFlagRequest.new(
  feature_flags: [
    Models::Shared::WorkspaceFeatureFlag::SKIP_SCHEMA_REGISTRY,
  ],
)

res = s.workspaces.set_feature_flags(req)

if ! res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Shared::WorkspaceFeatureFlagRequest](../../models/shared/workspacefeatureflagrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::SetWorkspaceFeatureFlagsResponse)](../../models/operations/setworkspacefeatureflagsresponse.md)**



## get_feature_flags

Get workspace feature flags

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.workspaces.get_feature_flags(workspace_id="<id>")

if ! res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceFeatureFlagsResponse)](../../models/operations/getworkspacefeatureflagsresponse.md)**

