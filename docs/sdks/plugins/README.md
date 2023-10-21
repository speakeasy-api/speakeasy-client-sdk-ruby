# Plugins
(*plugins*)

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


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

    
res = s.plugins.get_plugins()

if ! res.plugins.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetPluginsResponse)](../../models/operations/getpluginsresponse.md)**


## run_plugin

Run a plugin

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::RunPluginRequest.new(
  path_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
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
  ),
  query_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="<key>",
          operator="string",
          value="string",
        ),
      ],
      limit=442674,
      offset=545946,
      operator="string",
    ),
    plugin_id="string",
  ),
)
    
res = s.plugins.run_plugin(req)

if ! res.bounded_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Operations::RunPluginRequest](../../models/operations/runpluginrequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::RunPluginResponse)](../../models/operations/runpluginresponse.md)**


## upsert_plugin

Upsert a plugin

### Example Usage

```ruby
require_relative speakeasy_client_sdk_ruby


s = SpeakeasyClientSDK::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Shared::Plugin.new(
  request=Shared::Plugin.new(
    code="string",
    created_at=DateTime.iso8601('2021-12-29T22:47:21.364Z'),
    eval_hash="string",
    plugin_id="string",
    title="string",
    updated_at=DateTime.iso8601('2023-08-18T05:20:47.765Z'),
    workspace_id="string",
  ),
)
    
res = s.plugins.upsert_plugin(req)

if ! res.plugin.nil?
  # handle response
end

```

### Parameters

| Parameter                                       | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `request`                                       | [Shared::Plugin](../../models/shared/plugin.md) | :heavy_check_mark:                              | The request object to use for the request.      |


### Response

**[T.nilable(Operations::UpsertPluginResponse)](../../models/operations/upsertpluginresponse.md)**

