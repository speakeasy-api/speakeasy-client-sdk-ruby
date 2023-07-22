# plugins

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
          key="doloremque",
          operator="reprehenderit",
          value="ut",
        ),
      ],
      limit=979587,
      offset=120196,
      operator="corporis",
    ),
    plugin_id="dolore",
  ),
  query_params=Operations::RunPluginRequest.new(
    filters=Shared::Filters.new(
      filters=.new[
        Shared::Filter.new(
          key="dicta",
          operator="harum",
          value="enim",
        ),
        Shared::Filter.new(
          key="accusamus",
          operator="commodi",
          value="repudiandae",
        ),
      ],
      limit=64147,
      offset=216822,
      operator="quidem",
    ),
    plugin_id="molestias",
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
    code="excepturi",
    created_at=DateTime.iso8601('2022-03-16T09:33:50.291Z'),
    eval_hash="praesentium",
    plugin_id="rem",
    title="Dr.",
    updated_at=DateTime.iso8601('2022-01-29T18:39:33.469Z'),
    workspace_id="sint",
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

