# AccessToken

An AccessToken is a token that can be used to authenticate with the Speakeasy API.


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `access_token`                                                              | *::String*                                                                  | :heavy_check_mark:                                                          | N/A                                                                         |
| `claims`                                                                    | [Models::Shared::Claims](../../models/shared/claims.md)                     | :heavy_check_mark:                                                          | N/A                                                                         |
| `user`                                                                      | [Models::Shared::AccessTokenUser](../../models/shared/accesstokenuser.md)   | :heavy_check_mark:                                                          | N/A                                                                         |
| `workspaces`                                                                | T::Array<[Models::Shared::Workspaces](../../models/shared/workspaces.md)>   | :heavy_minus_sign:                                                          | N/A                                                                         |
| `feature_flags`                                                             | T::Array<[Models::Shared::FeatureFlag](../../models/shared/featureflag.md)> | :heavy_minus_sign:                                                          | N/A                                                                         |