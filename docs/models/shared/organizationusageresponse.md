# OrganizationUsageResponse

A billing summary of organization usage


## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `usage`                                                                                       | T::Array<[::OpenApiSDK::Shared::OrganizationUsage](../../models/shared/organizationusage.md)> | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `free_trial_expiry`                                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                          | :heavy_minus_sign:                                                                            | Expiry date of the free trial, will be null if no trial                                       |
| `total_allowed_languages`                                                                     | *::Integer*                                                                                   | :heavy_check_mark:                                                                            | Total number of allowed languages, -1 if unlimited                                            |
| `allowed_languages`                                                                           | T::Array<*::String*>                                                                          | :heavy_check_mark:                                                                            | List of allowed languages                                                                     |