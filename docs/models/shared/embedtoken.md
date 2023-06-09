# EmbedToken

A representation of an embed token granted for working with Speakeasy components.


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Creation timestamp.                                                  |
| `created_by`                                                         | *String*                                                             | :heavy_check_mark:                                                   | The ID of the user that created this token.                          |
| `description`                                                        | *String*                                                             | :heavy_check_mark:                                                   | A detailed description of the EmbedToken.                            |
| `expires_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | The time this token expires.                                         |
| `filters`                                                            | *String*                                                             | :heavy_check_mark:                                                   | The filters applied to this token.                                   |
| `id`                                                                 | *String*                                                             | :heavy_check_mark:                                                   | The ID of this EmbedToken.                                           |
| `last_used`                                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | The last time this token was used.                                   |
| `revoked_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | The time this token was revoked.                                     |
| `revoked_by`                                                         | *T.nilable(String)*                                                  | :heavy_minus_sign:                                                   | The ID of the user that revoked this token.                          |
| `workspace_id`                                                       | *String*                                                             | :heavy_check_mark:                                                   | The workspace ID this token belongs to.                              |