# PullRequestMetadata

This can only be populated when the github app is installed for a repo


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `status`                                                             | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `title`                                                              | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | N/A                                                                  |
| `description`                                                        | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | truncated to first 1000 characters                                   |
| `head_branch`                                                        | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `base_branch`                                                        | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `can_merge`                                                          | *T.nilable(T::Boolean)*                                              | :heavy_minus_sign:                                                   | N/A                                                                  |
| `labels`                                                             | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of github labels                                                |
| `requested_reviewers`                                                | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of github handles                                               |