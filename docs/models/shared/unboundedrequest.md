# UnboundedRequest

An UnboundedRequest represents the HAR content capture by Speakeasy when logging a request.


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Creation timestamp.                                                  |
| `har`                                                                | *::String*                                                           | :heavy_check_mark:                                                   | The HAR content of the request.                                      |
| `har_size_bytes`                                                     | *::Integer*                                                          | :heavy_check_mark:                                                   | The size of the HAR content in bytes.                                |
| `request_id`                                                         | *::String*                                                           | :heavy_check_mark:                                                   | The ID of this request.                                              |
| `workspace_id`                                                       | *::String*                                                           | :heavy_check_mark:                                                   | The workspace ID this request was made to.                           |