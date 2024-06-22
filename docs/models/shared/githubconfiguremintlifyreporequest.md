# GithubConfigureMintlifyRepoRequest

A request to configure a GitHub repository for mintlify


## Fields

| Field                        | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `input`                      | *::String*                   | :heavy_check_mark:           | The input OpenAPI document   |
| `org`                        | *::String*                   | :heavy_check_mark:           | The GitHub organization name |
| `overlays`                   | T::Array<*::String*>         | :heavy_check_mark:           | The overlays to apply        |
| `repo`                       | *::String*                   | :heavy_check_mark:           | The GitHub repository name   |