# SearchWorkspaceEventsRequest


## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `lint_report_digest`                                 | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | Unique identifier of the lint report digest.         |
| `openapi_diff_report_digest`                         | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | Unique identifier of the openapi diff report digest. |
| `source_revision_digest`                             | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | Unique identifier of the source revision digest.     |
| `workspace_id`                                       | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | Unique identifier of the workspace.                  |