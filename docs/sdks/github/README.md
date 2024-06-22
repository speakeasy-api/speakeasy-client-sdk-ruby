# Github


### Available Operations

* [check_access](#check_access)
* [configure_code_samples](#configure_code_samples)
* [configure_mintlify_repo](#configure_mintlify_repo)
* [configure_target](#configure_target)
* [fetch_publishing_p_rs](#fetch_publishing_p_rs)
* [github_check_publishing_secrets](#github_check_publishing_secrets)
* [github_store_publishing_secrets](#github_store_publishing_secrets)
* [trigger_action](#trigger_action)

## check_access

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Operations::CheckAccessRequest.new(
  org: "<value>",
  repo: "<value>",
)
    
res = s.github.check_access(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::SpeakeasyClientSDK::Operations::CheckAccessRequest](../../models/operations/checkaccessrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::CheckAccessResponse)](../../models/operations/checkaccessresponse.md)**


## configure_code_samples

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::GithubConfigureCodeSamplesRequest.new(
  org: "<value>",
  repo: "<value>",
  target_name: "<value>",
)
    
res = s.github.configure_code_samples(req)

if ! res.github_configure_code_samples_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::SpeakeasyClientSDK::Shared::GithubConfigureCodeSamplesRequest](../../models/shared/githubconfigurecodesamplesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::ConfigureCodeSamplesResponse)](../../models/operations/configurecodesamplesresponse.md)**


## configure_mintlify_repo

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::SpeakeasyClientSDK::SDK.new
s.config_security(
  ::SpeakeasyClientSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::SpeakeasyClientSDK::Shared::GithubConfigureMintlifyRepoRequest.new(
  input: "<value>",
  org: "<value>",
  overlays: [
    "<value>",
  ],
  repo: "<value>",
)
    
res = s.github.configure_mintlify_repo(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [::SpeakeasyClientSDK::Shared::GithubConfigureMintlifyRepoRequest](../../models/shared/githubconfiguremintlifyreporequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::ConfigureMintlifyRepoResponse)](../../models/operations/configuremintlifyreporesponse.md)**


## configure_target

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
    
res = s.github.configure_target(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::SpeakeasyClientSDK::Shared::GithubConfigureTargetRequest](../../models/shared/githubconfiguretargetrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::ConfigureTargetResponse)](../../models/operations/configuretargetresponse.md)**


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


## trigger_action

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
    
res = s.github.trigger_action(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::SpeakeasyClientSDK::Shared::GithubTriggerActionRequest](../../models/shared/githubtriggeractionrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::SpeakeasyClientSDK::Operations::TriggerActionResponse)](../../models/operations/triggeractionresponse.md)**

