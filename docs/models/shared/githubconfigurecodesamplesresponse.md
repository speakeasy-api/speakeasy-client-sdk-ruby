# GithubConfigureCodeSamplesResponse

A response to configure GitHub code samples


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `code_sample_overlay_registry_url`                                                        | *::String*                                                                                | :heavy_check_mark:                                                                        | The URL of the code sample overlay registry                                               |
| `gh_action_id`                                                                            | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | The ID of the GitHub action that was dispatched                                           |
| `source`                                                                                  | [::SpeakeasyClientSDK::Shared::WorkflowDocument](../../models/shared/workflowdocument.md) | :heavy_check_mark:                                                                        | A document referenced by a workflow                                                       |