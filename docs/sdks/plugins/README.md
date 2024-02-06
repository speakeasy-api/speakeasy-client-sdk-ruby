# Plugins


## Overview

REST APIs for managing and running plugins

### Available Operations

* [get_plugins](#get_plugins) - Get all plugins for the current workspace.
* [run_plugin](#run_plugin) - Run a plugin
* [upsert_plugin](#upsert_plugin) - Upsert a plugin

## get_plugins

Get all plugins for the current workspace.

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  security=::SpeakeasyClientSDK::Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plugins.get_plugins()

if ! res.classes.nil?
  # handle response
end

```


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GetPluginsResponse)](../../models/operations/getpluginsresponse.md)**


## run_plugin

Run a plugin

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  security=::SpeakeasyClientSDK::Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::RunPluginRequest.new(
  filters=::SpeakeasyClientSDK::Shared::Filters.new(
    filters=[
      ::SpeakeasyClientSDK::Shared::Filter.new(
        key="<key>",
        operator="string",
        value="string",
      ),
    ],
    limit=669298,
    offset=94585,
    operator="string",
  ),
  plugin_id="string",
)
    
res = s.plugins.run_plugin(req)

if ! res.classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::SpeakeasyClientSDK::Operations::RunPluginRequest](../../models/operations/runpluginrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::RunPluginResponse)](../../models/operations/runpluginresponse.md)**


## upsert_plugin

Upsert a plugin

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  security=::SpeakeasyClientSDK::Shared::Security.new(
    api_key="<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::Plugin.new(
  code="string",
  plugin_id="string",
  title="string",
  workspace_id="string",
)
    
res = s.plugins.upsert_plugin(req)

if ! res.plugin.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `request`                                                             | [::SpeakeasyClientSDK::Shared::Plugin](../../models/shared/plugin.md) | :heavy_check_mark:                                                    | The request object to use for the request.                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::UpsertPluginResponse)](../../models/operations/upsertpluginresponse.md)**

