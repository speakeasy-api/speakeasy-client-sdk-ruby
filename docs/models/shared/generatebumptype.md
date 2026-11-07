# GenerateBumpType

Bump type of the lock file (calculated semver delta, custom change (manual release), or prerelease/graduate)

## Example Usage

```ruby
require "speakeasy_client_sdk_ruby"

value = GenerateBumpType::MAJOR
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `MAJOR`      | major        |
| `MINOR`      | minor        |
| `PATCH`      | patch        |
| `CUSTOM`     | custom       |
| `GRADUATE`   | graduate     |
| `PRERELEASE` | prerelease   |
| `NONE`       | none         |