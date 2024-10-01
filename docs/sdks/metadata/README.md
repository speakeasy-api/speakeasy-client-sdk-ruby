# Metadata

## Overview

REST APIs for managing Version Metadata entities

### Available Operations

* [get_version](#get_version) - Get all metadata for a particular apiID and versionID.
* [insert_version_metadata](#insert_version_metadata) - Insert metadata for a particular apiID and versionID.
* [delete_version](#delete_version) - Delete metadata for a particular apiID and versionID.

## get_version

Get all metadata for a particular apiID and versionID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.get_version(api_id="<id>", version_id="<id>")

if ! res.version_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                           | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `api_id`                                            | *::String*                                          | :heavy_check_mark:                                  | The ID of the Api to retrieve metadata for.         |
| `version_id`                                        | *::String*                                          | :heavy_check_mark:                                  | The version ID of the Api to retrieve metadata for. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetVersionMetadataResponse)](../../models/operations/getversionmetadataresponse.md)**



## insert_version_metadata

Insert metadata for a particular apiID and versionID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.insert_version_metadata(api_id="<id>", version_id="<id>", version_metadata=::OpenApiSDK::Shared::VersionMetadataInput.new(
  meta_key: "<value>",
  meta_value: "<value>",
))

if ! res.version_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `api_id`                                                                                  | *::String*                                                                                | :heavy_check_mark:                                                                        | The ID of the Api to insert metadata for.                                                 |
| `version_id`                                                                              | *::String*                                                                                | :heavy_check_mark:                                                                        | The version ID of the Api to insert metadata for.                                         |
| `version_metadata`                                                                        | [::OpenApiSDK::Shared::VersionMetadataInput](../../models/shared/versionmetadatainput.md) | :heavy_check_mark:                                                                        | A JSON representation of the metadata to insert.                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::InsertVersionMetadataResponse)](../../models/operations/insertversionmetadataresponse.md)**



## delete_version

Delete metadata for a particular apiID and versionID.

### Example Usage

```ruby
require 'openapi'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.delete_version(api_id="<id>", version_id="<id>", meta_key="<value>", meta_value="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `api_id`                                          | *::String*                                        | :heavy_check_mark:                                | The ID of the Api to delete metadata for.         |
| `version_id`                                      | *::String*                                        | :heavy_check_mark:                                | The version ID of the Api to delete metadata for. |
| `meta_key`                                        | *::String*                                        | :heavy_check_mark:                                | The key of the metadata to delete.                |
| `meta_value`                                      | *::String*                                        | :heavy_check_mark:                                | The value of the metadata to delete.              |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteVersionMetadataResponse)](../../models/operations/deleteversionmetadataresponse.md)**

