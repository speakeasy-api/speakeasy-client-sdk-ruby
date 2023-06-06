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
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::DeleteVersionMetadataRequest(
  path_params=Operations::DeleteVersionMetadataRequest(
    api_id="laborum",
    meta_key="quasi",
    meta_value="reiciendis",
    version_id="voluptatibus",
  ),
)
    
res = s.metadata::delete_version_metadata(req)

if res.status == 200
  # handle response
end

```

## get_version_metadata

Get all metadata for a particular apiID and versionID.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::GetVersionMetadataRequest(
  path_params=Operations::GetVersionMetadataRequest(
    api_id="vero",
    version_id="nihil",
  ),
)
    
res = s.metadata::get_version_metadata(req)

if ! res.version_metadata.nil?
  # handle response
end

```

## insert_version_metadata

Insert metadata for a particular apiID and versionID.

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::InsertVersionMetadataRequest(
  path_params=Operations::InsertVersionMetadataRequest(
    version_metadata_input=Shared::VersionMetadataInput(
      meta_key="praesentium",
      meta_value="voluptatibus",
    ),
    api_id="ipsa",
    version_id="omnis",
  ),
  version_metadata_input=Shared::VersionMetadataInput(
    meta_key="voluptate",
    meta_value="cum",
  ),
)
    
res = s.metadata::insert_version_metadata(req)

if ! res.version_metadata.nil?
  # handle response
end

```
