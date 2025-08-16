# CodeSamples
(*code_samples*)

## Overview

REST APIs for retrieving Code Samples

### Available Operations

* [generate_code_sample_preview](#generate_code_sample_preview) - Generate Code Sample previews from a file and configuration parameters.
* [generate_code_sample_preview_async](#generate_code_sample_preview_async) - Initiate asynchronous Code Sample preview generation from a file and configuration parameters, receiving an async JobID response for polling.
* [get_code_sample_preview_async](#get_code_sample_preview_async) - Poll for the result of an asynchronous Code Sample preview generation.

## generate_code_sample_preview

This endpoint generates Code Sample previews from a file and configuration parameters.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="generateCodeSamplePreview" method="post" path="/v1/code_sample/preview" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::CodeSampleSchemaInput.new(
  language: '<value>',
  schema_file: Models::Shared::SchemaFile.new(
    file_name: 'example.file',
    content: File.binread("example.file"),
  ),
)

res = s.code_samples.generate_code_sample_preview(request: req)

unless res.usage_snippets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Shared::CodeSampleSchemaInput](../../models/shared/codesampleschemainput.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::GenerateCodeSamplePreviewResponse)](../../models/operations/generatecodesamplepreviewresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Models::Errors::Error | 5XX                   | application/json      |

## generate_code_sample_preview_async

This endpoint generates Code Sample previews from a file and configuration parameters, receiving an async JobID response for polling.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="generateCodeSamplePreviewAsync" method="post" path="/v1/code_sample/preview/async" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::CodeSampleSchemaInput.new(
  language: '<value>',
  schema_file: Models::Shared::SchemaFile.new(
    file_name: 'example.file',
    content: File.binread("example.file"),
  ),
)

res = s.code_samples.generate_code_sample_preview_async(request: req)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Shared::CodeSampleSchemaInput](../../models/shared/codesampleschemainput.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::GenerateCodeSamplePreviewAsyncResponse)](../../models/operations/generatecodesamplepreviewasyncresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Models::Errors::Error | 5XX                   | application/json      |

## get_code_sample_preview_async

Poll for the result of an asynchronous Code Sample preview generation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCodeSamplePreviewAsync" method="get" path="/v1/code_sample/preview/async/{jobID}" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.code_samples.get_code_sample_preview_async(job_id: '<id>')

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                  | Type                                                       | Required                                                   | Description                                                |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `job_id`                                                   | *::String*                                                 | :heavy_check_mark:                                         | The ID of the job to check the status and retrieve results |

### Response

**[T.nilable(Models::Operations::GetCodeSamplePreviewAsyncResponse)](../../models/operations/getcodesamplepreviewasyncresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Models::Errors::Error | 5XX                   | application/json      |