# CreateSchemaStoreItemRequestBody


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `spec`                                                          | *::String*                                                      | :heavy_check_mark:                                              | The OpenAPI specification to store.                             |
| `package_name`                                                  | *::String*                                                      | :heavy_check_mark:                                              | The package name to use in code snippets / quickstart.          |
| `sdk_classname`                                                 | *::String*                                                      | :heavy_check_mark:                                              | The classname of the SDK to use in code snippets / quickstart.  |
| `format`                                                        | [Models::Operations::Format](../../models/operations/format.md) | :heavy_check_mark:                                              | The format of the OpenAPI specification.                        |