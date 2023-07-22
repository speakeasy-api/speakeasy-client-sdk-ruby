# Filters

Filters are used to query requests.


## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `filters`                                                 | T::Array<[Shared::Filter](../../models/shared/filter.md)> | :heavy_check_mark:                                        | A list of filters to apply to the query.                  |
| `limit`                                                   | *Integer*                                                 | :heavy_check_mark:                                        | The maximum number of results to return.                  |
| `offset`                                                  | *Integer*                                                 | :heavy_check_mark:                                        | The offset to start the query from.                       |
| `operator`                                                | *String*                                                  | :heavy_check_mark:                                        | The operator to use when combining filters.               |