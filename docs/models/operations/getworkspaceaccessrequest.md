# GetWorkspaceAccessRequest


## Fields

| Field                                        | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `gen_lock_id`                                | *T.nilable(::String)*                        | :heavy_minus_sign:                           | Unique identifier of the generation target.  |
| `passive`                                    | *T.nilable(T::Boolean)*                      | :heavy_minus_sign:                           | Skip side-effects like incrementing metrics. |
| `target_type`                                | *T.nilable(::String)*                        | :heavy_minus_sign:                           | The type of the generated target.            |