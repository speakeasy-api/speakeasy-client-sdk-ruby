# GetWorkspaceTargetsDeprecatedRequest


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `workspace_id`                                                         | *::String*                                                             | :heavy_check_mark:                                                     | Unique identifier of the workspace.                                    |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |