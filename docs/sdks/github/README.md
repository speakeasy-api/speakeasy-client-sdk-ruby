# Github


### Available Operations

* [fetch_publishing_p_rs](#fetch_publishing_p_rs)
* [github_check_access](#github_check_access)
* [github_check_publishing_secrets](#github_check_publishing_secrets)
* [github_configure_target](#github_configure_target)
* [github_store_publishing_secrets](#github_store_publishing_secrets)
* [github_trigger_action](#github_trigger_action)

## fetch_publishing_p_rs

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::FetchPublishingPRsRequest.new(
  generate_gen_lock_id: "<value>",
  org: "<value>",
  repo: "<value>",
)
    
res = s.github.fetch_publishing_p_rs(req)

if ! res.github_publishing_pr_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::SpeakeasyClientSDK::Operations::FetchPublishingPRsRequest](../../models/operations/fetchpublishingprsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::FetchPublishingPRsResponse)](../../models/operations/fetchpublishingprsresponse.md)**


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


## github_check_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsRequest.new(
  generate_gen_lock_id: "<value>",
)
    
res = s.github.github_check_publishing_secrets(req)

if ! res.github_missing_publishing_secrets_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsRequest](../../models/operations/githubcheckpublishingsecretsrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsResponse)](../../models/operations/githubcheckpublishingsecretsresponse.md)**


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


## github_store_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::GithubStorePublishingSecretsRequest.new(
  generate_gen_lock_id: "<value>",
)
    
res = s.github.github_store_publishing_secrets(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::SpeakeasyClientSDK::Shared::GithubStorePublishingSecretsRequest](../../models/shared/githubstorepublishingsecretsrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::GithubStorePublishingSecretsResponse)](../../models/operations/githubstorepublishingsecretsresponse.md)**


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

