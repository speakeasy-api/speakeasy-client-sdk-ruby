# Reports


## Overview

REST APIs for managing reports

### Available Operations

* [get_linting_report_signed_url](#get_linting_report_signed_url) - Get the signed access url for the linting reports for a particular document.
* [upload_report](#upload_report) - Upload a report.

## get_linting_report_signed_url

Get the signed access url for the linting reports for a particular document.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GetLintingReportSignedUrlRequest.new(
  document_checksum: "<value>",
)
    
res = s.reports.get_linting_report_signed_url(req)

if ! res.signed_access.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::SpeakeasyClientSDK::Operations::GetLintingReportSignedUrlRequest](../../models/operations/getlintingreportsignedurlrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetLintingReportSignedUrlResponse)](../../models/operations/getlintingreportsignedurlresponse.md)**


## upload_report

Upload a report.

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::UploadReportRequestBody.new(
  data: ::SpeakeasyClientSDK::Shared::Report.new(),
  file: ::SpeakeasyClientSDK::Operations::File.new(
    content: "0xA329C0ad85".encode(),
    file_name: "sausages.m3a",
  ),
)
    
res = s.reports.upload_report(req)

if ! res.uploaded_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::SpeakeasyClientSDK::Operations::UploadReportRequestBody](../../models/operations/uploadreportrequestbody.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::UploadReportResponse)](../../models/operations/uploadreportresponse.md)**

