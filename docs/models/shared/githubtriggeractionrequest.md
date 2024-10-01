# GithubTriggerActionRequest

A request to trigger an action on a GitHub target


## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `org`                                                  | *::String*                                             | :heavy_check_mark:                                     | The GitHub organization name                           |
| `repo_name`                                            | *::String*                                             | :heavy_check_mark:                                     | The GitHub repository name                             |
| `target_name`                                          | *T.nilable(::String)*                                  | :heavy_minus_sign:                                     | The target name for the action                         |
| `gen_lock_id`                                          | *::String*                                             | :heavy_check_mark:                                     | The generation lock ID                                 |
| `set_version`                                          | *T.nilable(::String)*                                  | :heavy_minus_sign:                                     | A version to override the SDK too in workflow dispatch |
| `force`                                                | *T.nilable(T::Boolean)*                                | :heavy_minus_sign:                                     | Force an SDK generation                                |