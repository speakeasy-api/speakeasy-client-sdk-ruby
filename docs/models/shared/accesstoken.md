# AccessToken

An AccessToken is a token that can be used to authenticate with the Speakeasy API.


## Fields

| Field                                                                                   | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `access_token`                                                                          | *::String*                                                                              | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `claims`                                                                                | [::SpeakeasyClientSDK::Shared::Claims](../../models/shared/claims.md)                   | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `user`                                                                                  | [::SpeakeasyClientSDK::Shared::AccessTokenUser](../../models/shared/accesstokenuser.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `workspaces`                                                                            | T::Array<[::SpeakeasyClientSDK::Shared::Workspaces](../../models/shared/workspaces.md)> | :heavy_minus_sign:                                                                      | N/A                                                                                     |