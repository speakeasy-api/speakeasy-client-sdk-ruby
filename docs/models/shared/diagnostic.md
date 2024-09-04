# Diagnostic


## Fields

| Field                                 | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `help_message`                        | *T.nilable(::String)*                 | :heavy_minus_sign:                    | Help message for how to fix the issue |
| `message`                             | *::String*                            | :heavy_check_mark:                    | Message describing the issue          |
| `path`                                | T::Array<*::String*>                  | :heavy_check_mark:                    | Schema path to the issue              |
| `type`                                | *::String*                            | :heavy_check_mark:                    | Issue type                            |