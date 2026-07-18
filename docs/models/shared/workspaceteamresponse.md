# WorkspaceTeamResponse

Workspace team response


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `users`                                                                      | T::Array<[Models::Shared::User](../../models/shared/user.md)>                | :heavy_check_mark:                                                           | N/A                                                                          |
| `sso_metadata`                                                               | [T.nilable(Models::Shared::SSOMetadata)](../../models/shared/ssometadata.md) | :heavy_minus_sign:                                                           | SSO metadata for a workspace                                                 |