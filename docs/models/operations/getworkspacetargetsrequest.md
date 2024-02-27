# GetWorkspaceTargetsRequest


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `after_last_event_created_at`                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_minus_sign:                                                     | Filter to only return targets with events created after this timestamp |
| `workspace_id`                                                         | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Unique identifier of the workspace.                                    |