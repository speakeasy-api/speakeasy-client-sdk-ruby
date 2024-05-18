# Github


### Available Operations

* [github_check_access](#github_check_access)
* [github_configure_target](#github_configure_target)
* [github_trigger_action](#github_trigger_action)

## github_check_access

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GithubCheckAccessRequest.new(
  org: "<value>",
  repo: "<value>",
)
    
res = s.github.github_check_access(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Operations::GithubCheckAccessRequest](../../models/operations/githubcheckaccessrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GithubCheckAccessResponse)](../../models/operations/githubcheckaccessresponse.md)**


## github_configure_target

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::GithubConfigureTargetRequest.new(
  org: "<value>",
  repo_name: "<value>",
)
    
res = s.github.github_configure_target(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Shared::GithubConfigureTargetRequest](../../models/shared/githubconfiguretargetrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GithubConfigureTargetResponse)](../../models/operations/githubconfiguretargetresponse.md)**


## github_trigger_action

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::GithubTriggerActionRequest.new(
  gen_lock_id: "<value>",
  org: "<value>",
  repo_name: "<value>",
)
    
res = s.github.github_trigger_action(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::SpeakeasyClientSDK::Shared::GithubTriggerActionRequest](../../models/shared/githubtriggeractionrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GithubTriggerActionResponse)](../../models/operations/githubtriggeractionresponse.md)**

