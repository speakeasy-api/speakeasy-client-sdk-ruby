# GetSchemaDiffRequest


## Fields

| Field                                             | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to retrieve schemas for.        |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `base_revision_id`                                | *::String*                                        | :heavy_check_mark:                                | The base revision ID of the schema to retrieve.   |
| `target_revision_id`                              | *::String*                                        | :heavy_check_mark:                                | The target revision ID of the schema to retrieve. |