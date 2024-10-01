# OrganizationUsage


## Fields

| Field                                    | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `number_of_operations`                   | *::Integer*                              | :heavy_check_mark:                       | Number of operations performed           |
| `language`                               | *::String*                               | :heavy_check_mark:                       | The programming language used            |
| `used_features`                          | T::Array<*::String*>                     | :heavy_check_mark:                       | Features that have been used             |
| `accessible_features`                    | T::Array<*::String*>                     | :heavy_check_mark:                       | Features that are accessible             |
| `accessible`                             | *T::Boolean*                             | :heavy_check_mark:                       | Indicates if the features are accessible |
| `workspaces`                             | T::Array<*::String*>                     | :heavy_check_mark:                       | List of workspace IDs                    |
| `gen_lock_ids`                           | T::Array<*::String*>                     | :heavy_check_mark:                       | List of generation lock IDs              |