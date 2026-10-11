# AccountType

## Example Usage

```ruby
require "speakeasy_client_sdk_ruby"

value = AccountType::FREE

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `FREE`       | free         |
| `SCALE_UP`   | scale-up     |
| `BUSINESS`   | business     |
| `ENTERPRISE` | enterprise   |