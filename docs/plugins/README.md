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
require_relative sdk


s = sdk::SDK.new

    
res = s.plugins::get_plugins()

if ! res.plugins.nil?
  # handle response
end

```

## run_plugin

Run a plugin

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Operations::RunPluginRequest(
  path_params=Operations::RunPluginRequest(
    filters=Shared::Filters(
      filters=[
        Shared::Filter(
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
  query_params=Operations::RunPluginRequest(
    filters=Shared::Filters(
      filters=[
        Shared::Filter(
          key="dicta",
          operator="harum",
          value="enim",
        ),
        Shared::Filter(
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
    
res = s.plugins::run_plugin(req)

if ! res.bounded_requests.nil?
  # handle response
end

```

## upsert_plugin

Upsert a plugin

### Example Usage

```ruby
require_relative sdk


s = sdk::SDK.new

   
req = Operations::Shared::Plugin(
  request=Shared::Plugin(
    code="excepturi",
    created_at=DateTime.iso8601('2022-03-16T09:33:50.291Z'),
    eval_hash="praesentium",
    plugin_id="rem",
    title="Dr.",
    updated_at=DateTime.iso8601('2022-01-29T18:39:33.469Z'),
    workspace_id="sint",
  ),
)
    
res = s.plugins::upsert_plugin(req)

if ! res.plugin.nil?
  # handle response
end

```
