# SchemaDiff

A SchemaDiff represents a diff of two Schemas.


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `additions`                                                                              | T::Array<*::String*>                                                                     | :heavy_check_mark:                                                                       | Holds every addition change in the diff.                                                 |
| `deletions`                                                                              | T::Array<*::String*>                                                                     | :heavy_check_mark:                                                                       | Holds every deletion change in the diff.                                                 |
| `modifications`                                                                          | T::Hash[Symbol, [::OpenApiSDK::Shared::ValueChange](../../models/shared/valuechange.md)] | :heavy_check_mark:                                                                       | Holds every modification change in the diff.                                             |