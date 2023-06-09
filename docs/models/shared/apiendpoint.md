# ApiEndpoint

An ApiEndpoint is a description of an Endpoint for an API.


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `api_endpoint_id`                                                                        | *String*                                                                                 | :heavy_check_mark:                                                                       | The ID of this ApiEndpoint. This is a hash of the method and path.                       |
| `api_id`                                                                                 | *String*                                                                                 | :heavy_check_mark:                                                                       | The ID of the Api this ApiEndpoint belongs to.                                           |
| `created_at`                                                                             | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                     | :heavy_check_mark:                                                                       | Creation timestamp.                                                                      |
| `description`                                                                            | *String*                                                                                 | :heavy_check_mark:                                                                       | A detailed description of the ApiEndpoint.                                               |
| `display_name`                                                                           | *String*                                                                                 | :heavy_check_mark:                                                                       | A human-readable name for the ApiEndpoint.                                               |
| `matched`                                                                                | *T.nilable(T::Boolean)*                                                                  | :heavy_minus_sign:                                                                       | Determines if the endpoint was found in the OpenAPI spec associated with the parent Api. |
| `method`                                                                                 | *String*                                                                                 | :heavy_check_mark:                                                                       | HTTP verb.                                                                               |
| `path`                                                                                   | *String*                                                                                 | :heavy_check_mark:                                                                       | Path that handles this Api.                                                              |
| `updated_at`                                                                             | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                     | :heavy_check_mark:                                                                       | Last update timestamp.                                                                   |
| `version_id`                                                                             | *String*                                                                                 | :heavy_check_mark:                                                                       | The version ID of the Api this ApiEndpoint belongs to.                                   |
| `workspace_id`                                                                           | *String*                                                                                 | :heavy_check_mark:                                                                       | The workspace ID this ApiEndpoint belongs to.                                            |