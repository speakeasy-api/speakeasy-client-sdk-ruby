# AccessToken

An AccessToken is a token that can be used to authenticate with the Speakeasy API.


## Fields

| Field                                                                             | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `access_token`                                                                    | *::String*                                                                        | :heavy_check_mark:                                                                | N/A                                                                               |
| `claims`                                                                          | [::OpenApiSDK::Shared::Claims](../../models/shared/claims.md)                     | :heavy_check_mark:                                                                | N/A                                                                               |
| `user`                                                                            | [::OpenApiSDK::Shared::AccessTokenUser](../../models/shared/accesstokenuser.md)   | :heavy_check_mark:                                                                | N/A                                                                               |
| `workspaces`                                                                      | T::Array<[::OpenApiSDK::Shared::Workspaces](../../models/shared/workspaces.md)>   | :heavy_minus_sign:                                                                | N/A                                                                               |
| `feature_flags`                                                                   | T::Array<[::OpenApiSDK::Shared::FeatureFlag](../../models/shared/featureflag.md)> | :heavy_minus_sign:                                                                | N/A                                                                               |