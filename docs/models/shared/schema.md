# Schema

A Schema represents an API schema for a particular Api and Version.


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `api_id`                                                             | *::String*                                                           | :heavy_check_mark:                                                   | The ID of the Api this Schema belongs to.                            |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Creation timestamp.                                                  |
| `description`                                                        | *::String*                                                           | :heavy_check_mark:                                                   | A detailed description of the Schema.                                |
| `revision_id`                                                        | *::String*                                                           | :heavy_check_mark:                                                   | An ID referencing this particular revision of the Schema.            |
| `version_id`                                                         | *::String*                                                           | :heavy_check_mark:                                                   | The version ID of the Api this Schema belongs to.                    |
| `workspace_id`                                                       | *::String*                                                           | :heavy_check_mark:                                                   | The workspace ID this Schema belongs to.                             |