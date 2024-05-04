# User


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `admin`                                                              | *T::Boolean*                                                         | :heavy_check_mark:                                                   | Indicates whether the user is an admin.                              |
| `confirmed`                                                          | *T::Boolean*                                                         | :heavy_check_mark:                                                   | Indicates whether the user has been confirmed.                       |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Timestamp of the user's creation.                                    |
| `default_workspace_id`                                               | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Identifier of the default workspace.                                 |
| `display_name`                                                       | *::String*                                                           | :heavy_check_mark:                                                   | Display name of the user.                                            |
| `email`                                                              | *::String*                                                           | :heavy_check_mark:                                                   | Email address of the user.                                           |
| `email_verified`                                                     | *T::Boolean*                                                         | :heavy_check_mark:                                                   | Indicates whether the email address has been verified.               |
| `github_handle`                                                      | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | GitHub handle of the user.                                           |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | Unique identifier for the user.                                      |
| `last_login_at`                                                      | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Timestamp of the last login.                                         |
| `photo_url`                                                          | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | URL of the user's photo.                                             |
| `updated_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Timestamp of the user's last update.                                 |
| `whitelisted`                                                        | *T::Boolean*                                                         | :heavy_check_mark:                                                   | Indicates whether the user has been whitelisted.                     |