# GithubPublishingPRResponse

Open generation PRs pending publishing


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `pull_request`                                                                               | *T.nilable(::String)*                                                                        | :heavy_minus_sign:                                                                           | N/A                                                                                          |
| `pending_version`                                                                            | *T.nilable(::String)*                                                                        | :heavy_minus_sign:                                                                           | N/A                                                                                          |
| `pull_request_metadata`                                                                      | [T.nilable(Models::Shared::PullRequestMetadata)](../../models/shared/pullrequestmetadata.md) | :heavy_minus_sign:                                                                           | This can only be populated when the github app is installed for a repo                       |