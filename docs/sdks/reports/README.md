# Reports
(*reports*)

## Overview

REST APIs for managing reports (lint reports, change reports, etc)

### Available Operations

* [upload](#upload) - Upload a report.
* [get_signed_url](#get_signed_url) - Get the signed access url for the linting reports for a particular document.
* [get_changes_signed_url](#get_changes_signed_url) - Get the signed access url for the change reports for a particular document.

## upload

Upload a report.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::UploadReportRequestBody.new(
  data: Models::Shared::Report.new(),
  file: Models::Operations::File.new(
    file_name: "example.file",
    content: "0x8cc9e675ad".encode(),
  ),
)

res = s.reports.upload(req)

if ! res.uploaded_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UploadReportRequestBody](../../models/operations/uploadreportrequestbody.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UploadReportResponse)](../../models/operations/uploadreportresponse.md)**



## get_signed_url

Get the signed access url for the linting reports for a particular document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.reports.get_signed_url(document_checksum="<value>")

if ! res.signed_access.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `document_checksum`                                                 | *::String*                                                          | :heavy_check_mark:                                                  | The checksum of the document to retrieve the signed access url for. |

### Response

**[T.nilable(Models::Operations::GetLintingReportSignedUrlResponse)](../../models/operations/getlintingreportsignedurlresponse.md)**



## get_changes_signed_url

Get the signed access url for the change reports for a particular document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.reports.get_changes_signed_url(document_checksum="<value>")

if ! res.signed_access.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `document_checksum`                                                 | *::String*                                                          | :heavy_check_mark:                                                  | The checksum of the document to retrieve the signed access url for. |

### Response

**[T.nilable(Models::Operations::GetChangesReportSignedUrlResponse)](../../models/operations/getchangesreportsignedurlresponse.md)**

