# Metadata


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
s.config_security(
  security=Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::DeleteVersionMetadataRequest.new(
  api_id="string",
  meta_key="string",
  meta_value="string",
  version_id="string",
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
s.config_security(
  security=Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetVersionMetadataRequest.new(
  api_id="string",
  version_id="string",
)
    
res = s.metadata.get_version_metadata(req)

if ! res.classes.nil?
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
s.config_security(
  security=Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::InsertVersionMetadataRequest.new(
  version_metadata=Shared::VersionMetadataInput.new(
    meta_key="string",
    meta_value="string",
  ),
  api_id="string",
  version_id="string",
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

