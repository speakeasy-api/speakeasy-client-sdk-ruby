# CodeSampleSchemaInput


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `package_name`                                                  | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | The name of the package                                         |
| `sdk_class_name`                                                | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | The SDK class name                                              |
| `language`                                                      | *::String*                                                      | :heavy_check_mark:                                              | The language to generate code samples for                       |
| `operation_ids`                                                 | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | A list of operations IDs to generate code samples for           |
| `schema_file`                                                   | [Models::Shared::SchemaFile](../../models/shared/schemafile.md) | :heavy_check_mark:                                              | The OpenAPI file to be uploaded                                 |