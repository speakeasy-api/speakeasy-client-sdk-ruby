# metadata

## Overview

REST APIs for managing Version Metadata entities

### Available Operations

* [delete_version_metadata](#delete_version_metadata) - Delete metadata for a particular apiID and versionID.
* [get_version_metadata](#get_version_metadata) - Get all metadata for a particular apiID and versionID.
* [insert_version_metadata](#insert_version_metadata) - Insert metadata for a particular apiID and versionID.

## delete_version_metadata

Delete metadata for a particular apiID and versionID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::DeleteVersionMetadataRequest.new(
  path_params=Operations::DeleteVersionMetadataRequest.new(
    api_id="ad",
    meta_key="natus",
    meta_value="sed",
    version_id="iste",
  ),
)
    
res = s.metadata.delete_version_metadata(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::DeleteVersionMetadataRequest](../../models/operations/deleteversionmetadatarequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::DeleteVersionMetadataResponse)](../../models/operations/deleteversionmetadataresponse.md)**


## get_version_metadata

Get all metadata for a particular apiID and versionID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::GetVersionMetadataRequest.new(
  path_params=Operations::GetVersionMetadataRequest.new(
    api_id="dolor",
    version_id="natus",
  ),
)
    
res = s.metadata.get_version_metadata(req)

if ! res.version_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::GetVersionMetadataRequest](../../models/operations/getversionmetadatarequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::GetVersionMetadataResponse)](../../models/operations/getversionmetadataresponse.md)**


## insert_version_metadata

Insert metadata for a particular apiID and versionID.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new

   
req = Operations::InsertVersionMetadataRequest.new(
  path_params=Operations::InsertVersionMetadataRequest.new(
    version_metadata_input=Shared::VersionMetadataInput.new(
      meta_key="laboriosam",
      meta_value="hic",
    ),
    api_id="saepe",
    version_id="fuga",
  ),
  version_metadata_input=Shared::VersionMetadataInput.new(
    meta_key="in",
    meta_value="corporis",
  ),
)
    
res = s.metadata.insert_version_metadata(req)

if ! res.version_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::InsertVersionMetadataRequest](../../models/operations/insertversionmetadatarequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::InsertVersionMetadataResponse)](../../models/operations/insertversionmetadataresponse.md)**

