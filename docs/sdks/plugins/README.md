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
          key="saepe",
          operator="quidem",
          value="architecto",
        ),
      ],
      limit=60225,
      offset=969810,
      operator="est",
    ),
    plugin_id="mollitia",
  ),
  query_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="laborum",
          operator="dolores",
          value="dolorem",
        ),
      ],
      limit=358152,
      offset=128926,
      operator="nobis",
    ),
    plugin_id="enim",
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
    code="omnis",
    created_at=DateTime.iso8601('2022-09-04T08:35:09.957Z'),
    eval_hash="excepturi",
    plugin_id="accusantium",
    title="Ms.",
    updated_at=DateTime.iso8601('2021-01-09T11:41:25.666Z'),
    workspace_id="sapiente",
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

