# Organization

A speakeasy organization


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | N/A                                                                  |
| `name`                                                               | *::String*                                                           | :heavy_check_mark:                                                   | N/A                                                                  |
| `slug`                                                               | *::String*                                                           | :heavy_check_mark:                                                   | N/A                                                                  |
| `account_type`                                                       | [Models::Shared::AccountType](../../models/shared/accounttype.md)    | :heavy_check_mark:                                                   | N/A                                                                  |
| `telemetry_disabled`                                                 | *T::Boolean*                                                         | :heavy_check_mark:                                                   | N/A                                                                  |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | N/A                                                                  |
| `updated_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | N/A                                                                  |
| `free_trial_expiry`                                                  | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | N/A                                                                  |
| `sso_connection_id`                                                  | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `sso_activated`                                                      | *T::Boolean*                                                         | :heavy_check_mark:                                                   | N/A                                                                  |
| `internal`                                                           | *T.nilable(T::Boolean)*                                              | :heavy_minus_sign:                                                   | N/A                                                                  |