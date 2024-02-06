# GetAllApiVersionsRequest


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `api_id`                                                                         | *::String*                                                                       | :heavy_check_mark:                                                               | The ID of the Api to retrieve.                                                   |
| `metadata`                                                                       | T::Hash[Symbol, T::Array<*::String*>]                                            | :heavy_minus_sign:                                                               | Metadata to filter Apis on                                                       |
| `op`                                                                             | [T.nilable(::SpeakeasyClientSDK::Operations::Op)](../../models/operations/op.md) | :heavy_minus_sign:                                                               | Configuration for filter operations                                              |