# Reports

## Overview

REST APIs for managing reports

### Available Operations

* [upload](#upload) - Upload a report.
* [get_linting_report_url](#get_linting_report_url) - Get the signed access url for the linting reports for a particular document.
* [get_changes_signed_url](#get_changes_signed_url) - Get the signed access url for the change reports for a particular document.

## upload

Upload a report.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Operations::UploadReportRequestBody.new(
  data: ::OpenApiSDK::Shared::Report.new(),
  file: ::OpenApiSDK::Operations::UploadReportFile.new(
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

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::OpenApiSDK::Operations::UploadReportRequestBody](../../models/operations/uploadreportrequestbody.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::UploadReportResponse)](../../models/operations/uploadreportresponse.md)**



## get_linting_report_url

Get the signed access url for the linting reports for a particular document.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.reports.get_linting_report_url(document_checksum="<value>")

if ! res.signed_access.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `document_checksum`                                                 | *::String*                                                          | :heavy_check_mark:                                                  | The checksum of the document to retrieve the signed access url for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetLintingReportSignedUrlResponse)](../../models/operations/getlintingreportsignedurlresponse.md)**



## get_changes_signed_url

Get the signed access url for the change reports for a particular document.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
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

**[T.nilable(::OpenApiSDK::Operations::GetChangesReportSignedUrlResponse)](../../models/operations/getchangesreportsignedurlresponse.md)**

