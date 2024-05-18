# OrganizationUsage


## Fields

| Field                                    | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `accessible`                             | *T::Boolean*                             | :heavy_check_mark:                       | Indicates if the features are accessible |
| `accessible_features`                    | T::Array<*::String*>                     | :heavy_check_mark:                       | Features that are accessible             |
| `gen_lock_ids`                           | T::Array<*::String*>                     | :heavy_check_mark:                       | List of generation lock IDs              |
| `language`                               | *::String*                               | :heavy_check_mark:                       | The programming language used            |
| `number_of_operations`                   | *::Integer*                              | :heavy_check_mark:                       | Number of operations performed           |
| `used_features`                          | T::Array<*::String*>                     | :heavy_check_mark:                       | Features that have been used             |
| `workspaces`                             | T::Array<*::String*>                     | :heavy_check_mark:                       | List of workspace IDs                    |