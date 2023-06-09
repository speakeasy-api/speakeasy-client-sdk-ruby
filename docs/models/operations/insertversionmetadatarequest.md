# InsertVersionMetadataRequest


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `version_metadata_input`                                                    | [Shared::VersionMetadataInput](../../models/shared/versionmetadatainput.md) | :heavy_check_mark:                                                          | A JSON representation of the metadata to insert.                            |
| `api_id`                                                                    | *String*                                                                    | :heavy_check_mark:                                                          | The ID of the Api to insert metadata for.                                   |
| `version_id`                                                                | *String*                                                                    | :heavy_check_mark:                                                          | The version ID of the Api to insert metadata for.                           |