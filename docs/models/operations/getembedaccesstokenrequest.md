# GetEmbedAccessTokenRequest


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `description`                                                                      | *T.nilable(::String)*                                                              | :heavy_minus_sign:                                                                 | The description of the embed access token.                                         |
| `duration`                                                                         | *T.nilable(::Integer)*                                                             | :heavy_minus_sign:                                                                 | The duration (in minutes) of the embed access token.                               |
| `filters`                                                                          | [T.nilable(::SpeakeasyClientSDK::Shared::Filters)](../../models/shared/filters.md) | :heavy_minus_sign:                                                                 | The filter to apply to the query.                                                  |