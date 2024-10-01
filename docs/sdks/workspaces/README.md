# Workspaces

## Overview

### Available Operations

* [get_all](#get_all) - Get workspaces for a user
* [retrieve](#retrieve) - Get workspace by context
* [create](#create) - Create a workspace
* [get](#get) - Get workspace
* [update_details](#update_details) - Update workspace details
* [get_settings](#get_settings) - Get workspace settings
* [update_settings](#update_settings) - Update workspace settings
* [get_team](#get_team) - Get team members for a particular workspace
* [grant_access](#grant_access) - Grant a user access to a particular workspace
* [revoke_access](#revoke_access) - Revoke a user's access to a particular workspace
* [get_tokens](#get_tokens) - Get tokens for a particular workspace
* [create_token](#create_token) - Create a token for a particular workspace
* [delete_token](#delete_token) - Delete a token for a particular workspace
* [get_feature_flags](#get_feature_flags) - Get workspace feature flags

## get_all

Returns a list of workspaces a user has access too

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get_all()

if ! res.workspaces.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspacesResponse)](../../models/operations/getworkspacesresponse.md)**



## retrieve

Get information about a particular workspace by context.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.retrieve()

if ! res.workspace_and_organization.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceByContextResponse)](../../models/operations/getworkspacebycontextresponse.md)**



## create

Creates a workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::Workspace.new(
  created_at: DateTime.iso8601('2023-06-18T07:14:55.338Z'),
  id: "<id>",
  name: "<value>",
  organization_id: "<id>",
  slug: "<value>",
  telemetry_disabled: false,
  updated_at: DateTime.iso8601('2023-12-01T17:06:07.804Z'),
  verified: false,
)
    
res = s.workspaces.create(req)

if ! res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `request`                                                           | [::OpenApiSDK::Shared::Workspace](../../models/shared/workspace.md) | :heavy_check_mark:                                                  | The request object to use for the request.                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateWorkspaceResponse)](../../models/operations/createworkspaceresponse.md)**



## get

Get information about a particular workspace.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get(workspace_id="<id>")

if ! res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**



## update_details

Update information about a particular workspace.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.update_details(workspace_id="<id>", workspace=::OpenApiSDK::Shared::Workspace.new(
  created_at: DateTime.iso8601('2024-02-01T20:44:31.776Z'),
  id: "<id>",
  name: "<value>",
  organization_id: "<id>",
  slug: "<value>",
  telemetry_disabled: false,
  updated_at: DateTime.iso8601('2023-08-04T18:26:06.739Z'),
  verified: false,
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `workspace_id`                                                      | *::String*                                                          | :heavy_check_mark:                                                  | Unique identifier of the workspace.                                 |
| `workspace`                                                         | [::OpenApiSDK::Shared::Workspace](../../models/shared/workspace.md) | :heavy_check_mark:                                                  | The workspace details to update.                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateWorkspaceDetailsResponse)](../../models/operations/updateworkspacedetailsresponse.md)**



## get_settings

Get settings about a particular workspace.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get_settings(workspace_id="<id>")

if ! res.workspace_settings.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceSettingsResponse)](../../models/operations/getworkspacesettingsresponse.md)**



## update_settings

Update settings about a particular workspace.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.update_settings(workspace_id="<id>", workspace_settings=::OpenApiSDK::Shared::WorkspaceSettings.new(
  workspace_id: "<id>",
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `workspace_id`                                                                      | *::String*                                                                          | :heavy_check_mark:                                                                  | Unique identifier of the workspace.                                                 |
| `workspace_settings`                                                                | [::OpenApiSDK::Shared::WorkspaceSettings](../../models/shared/workspacesettings.md) | :heavy_check_mark:                                                                  | The workspace settings to update.                                                   |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateWorkspaceSettingsResponse)](../../models/operations/updateworkspacesettingsresponse.md)**



## get_team

Get team members for a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get_team(workspace_id="<id>")

if ! res.workspace_team_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceTeamResponse)](../../models/operations/getworkspaceteamresponse.md)**



## grant_access

Grant a user access to a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.grant_access(workspace_id="<id>", email="Lucinda.Batz8@hotmail.com")

if ! res.workspace_invite_response.nil?
  # handle response
end

```

### Parameters

| Parameter                             | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `workspace_id`                        | *::String*                            | :heavy_check_mark:                    | Unique identifier of the workspace.   |
| `email`                               | *::String*                            | :heavy_check_mark:                    | Email of the user to grant access to. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GrantUserAccessToWorkspaceResponse)](../../models/operations/grantuseraccesstoworkspaceresponse.md)**



## revoke_access

Revoke a user's access to a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.revoke_access(workspace_id="<id>", user_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |
| `user_id`                           | *::String*                          | :heavy_check_mark:                  | Unique identifier of the user.      |

### Response

**[T.nilable(::OpenApiSDK::Operations::RevokeUserAccessToWorkspaceResponse)](../../models/operations/revokeuseraccesstoworkspaceresponse.md)**



## get_tokens

Get tokens for a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get_tokens(workspace_id="<id>")

if ! res.workspace_tokens.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceTokensResponse)](../../models/operations/getworkspacetokensresponse.md)**



## create_token

Create a token for a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.create_token(workspace_id="<id>", workspace_token=::OpenApiSDK::Shared::WorkspaceToken.new(
  id: "<id>",
  name: "<value>",
  alg: "<value>",
  key: "<key>",
  created_at: "<value>",
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `workspace_id`                                                                | *::String*                                                                    | :heavy_check_mark:                                                            | Unique identifier of the workspace.                                           |
| `workspace_token`                                                             | [::OpenApiSDK::Shared::WorkspaceToken](../../models/shared/workspacetoken.md) | :heavy_check_mark:                                                            | N/A                                                                           |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateWorkspaceTokenResponse)](../../models/operations/createworkspacetokenresponse.md)**



## delete_token

Delete a token for a particular workspace

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.delete_token(workspace_id="<id>", token_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |
| `token_id`                          | *::String*                          | :heavy_check_mark:                  | Unique identifier of the token.     |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteWorkspaceTokenResponse)](../../models/operations/deleteworkspacetokenresponse.md)**



## get_feature_flags

Get workspace feature flags

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.workspaces.get_feature_flags(workspace_id="<id>")

if ! res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *::String*                          | :heavy_check_mark:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceFeatureFlagsResponse)](../../models/operations/getworkspacefeatureflagsresponse.md)**

