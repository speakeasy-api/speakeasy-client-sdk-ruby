# GetApisRequest


## Fields

| Field                                                                    | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `metadata`                                                               | T::Hash[Symbol, T::Array<*String*>]                                      | :heavy_minus_sign:                                                       | Metadata to filter Apis on                                               |
| `op`                                                                     | [T.nilable(Operations::GetApisOp)](../../models/operations/getapisop.md) | :heavy_minus_sign:                                                       | Configuration for filter operations                                      |