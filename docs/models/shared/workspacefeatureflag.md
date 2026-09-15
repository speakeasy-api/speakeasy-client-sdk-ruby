# WorkspaceFeatureFlag

enum value workspace feature flag

## Example Usage

```ruby
require "speakeasy_client_sdk_ruby"

value = WorkspaceFeatureFlag::SCHEMA_REGISTRY

# Open enum: use .deserialize() to create instances from custom string values
custom = WorkspaceFeatureFlag.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `SCHEMA_REGISTRY`      | schema_registry        |
| `CHANGES_REPORT`       | changes_report         |
| `SKIP_SCHEMA_REGISTRY` | skip_schema_registry   |
| `WEBHOOKS`             | webhooks               |