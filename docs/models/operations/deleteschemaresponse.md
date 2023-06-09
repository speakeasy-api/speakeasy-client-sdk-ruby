# DeleteSchemaResponse


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `content_type`                                                              | *String*                                                                    | :heavy_check_mark:                                                          | N/A                                                                         |
| `error`                                                                     | [T.nilable(Shared::Error)](../../models/shared/error.md)                    | :heavy_minus_sign:                                                          | Default error response                                                      |
| `status_code`                                                               | *Integer*                                                                   | :heavy_check_mark:                                                          | N/A                                                                         |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | N/A                                                                         |