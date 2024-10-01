# VersionMetadata

A set of keys and associated values, attached to a particular version of an Api.


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `api_id`                                                             | *::String*                                                           | :heavy_check_mark:                                                   | The ID of the Api this Metadata belongs to.                          |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Creation timestamp.                                                  |
| `meta_key`                                                           | *::String*                                                           | :heavy_check_mark:                                                   | The key for this metadata.                                           |
| `meta_value`                                                         | *::String*                                                           | :heavy_check_mark:                                                   | One of the values for this metadata.                                 |
| `version_id`                                                         | *::String*                                                           | :heavy_check_mark:                                                   | The version ID of the Api this Metadata belongs to.                  |
| `workspace_id`                                                       | *::String*                                                           | :heavy_check_mark:                                                   | The workspace ID this Metadata belongs to.                           |