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

<!-- UsageSnippet language="ruby" operationID="getWorkspaces" method="get" path="/v1/workspaces" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_all()

unless res.workspaces.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetWorkspacesResponse)](../../models/operations/getworkspacesresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get

Get information about a particular workspace by context.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceByContext" method="get" path="/v1/workspace" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get()

unless res.workspace_and_organization.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetWorkspaceByContextResponse)](../../models/operations/getworkspacebycontextresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create

Creates a workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createWorkspace" method="post" path="/v1/workspace" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::Workspace.new(
  created_at: DateTime.iso8601('2023-11-18T13:41:10.525Z'),
  id: '<id>',
  name: '<value>',
  organization_id: '<id>',
  slug: '<value>',
  updated_at: DateTime.iso8601('2024-11-21T08:36:32.740Z'),
  verified: true,
)

res = s.workspaces.create(request: req)

unless res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `request`                                                     | [Models::Shared::Workspace](../../models/shared/workspace.md) | :heavy_check_mark:                                            | The request object to use for the request.                    |

### Response

**[T.nilable(Models::Operations::CreateWorkspaceResponse)](../../models/operations/createworkspaceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_by_id

Get information about a particular workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspace" method="get" path="/v1/workspace/{workspace_id}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_by_id()

unless res.workspace.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## update_details

Update information about a particular workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateWorkspaceDetails" method="post" path="/v1/workspace/{workspace_id}/details" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.update_details(workspace: Models::Shared::Workspace.new(
  created_at: DateTime.iso8601('2023-08-02T22:30:24.264Z'),
  id: '<id>',
  name: '<value>',
  organization_id: '<id>',
  slug: '<value>',
  updated_at: DateTime.iso8601('2025-01-24T03:53:13.581Z'),
  verified: true,
))

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_settings

Get settings about a particular workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceSettings" method="get" path="/v1/workspace/{workspace_id}/settings" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_settings()

unless res.workspace_settings.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceSettingsResponse)](../../models/operations/getworkspacesettingsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## update_settings

Update settings about a particular workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateWorkspaceSettings" method="put" path="/v1/workspace/{workspace_id}/settings" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.update_settings(workspace_settings: Models::Shared::WorkspaceSettings.new(
  workspace_id: '<id>',
  webhook_url: 'https://wicked-reboot.org',
  created_at: DateTime.iso8601('2024-07-27T10:14:11.397Z'),
  updated_at: DateTime.iso8601('2025-12-12T17:54:28.990Z'),
))

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_team

Get team members for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceTeam" method="get" path="/v1/workspace/{workspace_id}/team" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_team()

unless res.workspace_team_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTeamResponse)](../../models/operations/getworkspaceteamresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## grant_access

Grant a user access to a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="grantUserAccessToWorkspace" method="put" path="/v1/workspace/{workspace_id}/team/email/{email}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.grant_access(email: 'Idella24@gmail.com')

unless res.workspace_invite_response.nil?
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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## revoke_access

Revoke a user's access to a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="revokeUserAccessToWorkspace" method="delete" path="/v1/workspace/{workspace_id}/team/{userId}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.revoke_access(user_id: '<id>')

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_tokens

Get tokens for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceTokens" method="get" path="/v1/workspace/{workspace_id}/tokens" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_tokens()

unless res.workspace_tokens.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceTokensResponse)](../../models/operations/getworkspacetokensresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## create_token

Create a token for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createWorkspaceToken" method="post" path="/v1/workspace/{workspace_id}/tokens" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.create_token(workspace_token: Models::Shared::WorkspaceToken.new(
  id: '<id>',
  name: '<value>',
  workspace_id: '<id>',
  alg: '<value>',
  key: '<key>',
  created_at: DateTime.iso8601('2024-10-04T10:23:04.522Z'),
))

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## delete_token

Delete a token for a particular workspace

### Example Usage

<!-- UsageSnippet language="ruby" operationID="deleteWorkspaceToken" method="delete" path="/v1/workspace/{workspace_id}/tokens/{tokenID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.delete_token(token_id: '<id>')

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## set_feature_flags

Set workspace feature flags

### Example Usage

<!-- UsageSnippet language="ruby" operationID="setWorkspaceFeatureFlags" method="post" path="/v1/workspace/feature_flags" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::WorkspaceFeatureFlagRequest.new(
  feature_flags: [],
)

res = s.workspaces.set_feature_flags(request: req)

unless res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Shared::WorkspaceFeatureFlagRequest](../../models/shared/workspacefeatureflagrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::SetWorkspaceFeatureFlagsResponse)](../../models/operations/setworkspacefeatureflagsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |

## get_feature_flags

Get workspace feature flags

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspaceFeatureFlags" method="get" path="/v1/workspace/{workspace_id}/feature_flags" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      workspace_id: '<id>',
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.workspaces.get_feature_flags()

unless res.workspace_feature_flag_response.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `workspace_id`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Unique identifier of the workspace. |

### Response

**[T.nilable(Models::Operations::GetWorkspaceFeatureFlagsResponse)](../../models/operations/getworkspacefeatureflagsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 5XX                   | application/json      |
| Errors::APIError      | 4XX                   | \*/\*                 |