# GithubConfigureMintlifyRepoRequest

A request to configure a GitHub repository for mintlify


## Fields

| Field                                    | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `org`                                    | *::String*                               | :heavy_check_mark:                       | The GitHub organization name             |
| `repo`                                   | *::String*                               | :heavy_check_mark:                       | The GitHub repository name               |
| `subdirectory`                           | *T.nilable(::String)*                    | :heavy_minus_sign:                       | The subdirectory (location of mint.json) |
| `input`                                  | *::String*                               | :heavy_check_mark:                       | The input OpenAPI document               |
| `overlays`                               | T::Array<*::String*>                     | :heavy_check_mark:                       | The overlays to apply                    |