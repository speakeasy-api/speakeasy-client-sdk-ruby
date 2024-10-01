# UpdateWorkspaceSettingsRequest


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `workspace_id`                                                                      | *::String*                                                                          | :heavy_check_mark:                                                                  | Unique identifier of the workspace.                                                 |
| `workspace_settings`                                                                | [::OpenApiSDK::Shared::WorkspaceSettings](../../models/shared/workspacesettings.md) | :heavy_check_mark:                                                                  | The workspace settings to update.                                                   |