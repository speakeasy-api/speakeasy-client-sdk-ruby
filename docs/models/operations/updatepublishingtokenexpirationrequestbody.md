# UpdatePublishingTokenExpirationRequestBody

The publishing token to update


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `valid_until`                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | The new expiration date for the publishing token.                    |
| `token_name`                                                         | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The new name for the publishing token.                               |