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


s = SpeakeasyClientSDK::SDK.new

    
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

   
req = Operations::RunPluginRequest.new(
  path_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="iste",
          operator="iure",
          value="saepe",
        ),
      ],
      limit=697631,
      offset=99280,
      operator="ipsa",
    ),
    plugin_id="reiciendis",
  ),
  query_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="est",
          operator="mollitia",
          value="laborum",
        ),
      ],
      limit=170909,
      offset=210382,
      operator="corporis",
    ),
    plugin_id="explicabo",
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

   
req = Shared::Plugin.new(
  request=Shared::Plugin.new(
    code="nobis",
    created_at=DateTime.iso8601('2022-05-24T03:24:11.703Z'),
    eval_hash="nemo",
    plugin_id="minima",
    title="Ms.",
    updated_at=DateTime.iso8601('2022-07-24T21:51:02.112Z'),
    workspace_id="culpa",
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

