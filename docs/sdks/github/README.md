# Github

## Overview

### Available Operations

* [check_access](#check_access)
* [check_publishing_p_rs](#check_publishing_p_rs)
* [check_publishing_secrets](#check_publishing_secrets)
* [store_publishing_secrets](#store_publishing_secrets)
* [configure_code_samples](#configure_code_samples)
* [configure_mintlify_repo](#configure_mintlify_repo)
* [configure_target](#configure_target)
* [trigger_action](#trigger_action)
* [get_action](#get_action)

## check_access

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.github.check_access(org="<value>", repo="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `org`              | *::String*         | :heavy_check_mark: | N/A                |
| `repo`             | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(::OpenApiSDK::Operations::CheckGithubAccessResponse)](../../models/operations/checkgithubaccessresponse.md)**



## check_publishing_p_rs

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.github.check_publishing_p_rs(generate_gen_lock_id="<id>", org="<value>", repo="<value>")

if ! res.github_publishing_pr_response.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `generate_gen_lock_id` | *::String*             | :heavy_check_mark:     | N/A                    |
| `org`                  | *::String*             | :heavy_check_mark:     | N/A                    |
| `repo`                 | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubCheckPublishingPRsResponse)](../../models/operations/githubcheckpublishingprsresponse.md)**



## check_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.github.check_publishing_secrets(generate_gen_lock_id="<id>")

if ! res.github_missing_publishing_secrets_response.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `generate_gen_lock_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubCheckPublishingSecretsResponse)](../../models/operations/githubcheckpublishingsecretsresponse.md)**



## store_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::GithubStorePublishingSecretsRequest.new(
  generate_gen_lock_id: "<id>",
)
    
res = s.github.store_publishing_secrets(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::OpenApiSDK::Shared::GithubStorePublishingSecretsRequest](../../models/shared/githubstorepublishingsecretsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubStorePublishingSecretsResponse)](../../models/operations/githubstorepublishingsecretsresponse.md)**



## configure_code_samples

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::GithubConfigureCodeSamplesRequest.new(
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

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::OpenApiSDK::Shared::GithubConfigureCodeSamplesRequest](../../models/shared/githubconfigurecodesamplesrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubConfigureCodeSamplesResponse)](../../models/operations/githubconfigurecodesamplesresponse.md)**



## configure_mintlify_repo

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::GithubConfigureMintlifyRepoRequest.new(
  org: "<value>",
  repo: "<value>",
  input: "<value>",
  overlays: [
    "<value>",
  ],
)
    
res = s.github.configure_mintlify_repo(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::OpenApiSDK::Shared::GithubConfigureMintlifyRepoRequest](../../models/shared/githubconfiguremintlifyreporequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubConfigureMintlifyRepoResponse)](../../models/operations/githubconfiguremintlifyreporesponse.md)**



## configure_target

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::GithubConfigureTargetRequest.new(
  org: "<value>",
  repo_name: "<value>",
)
    
res = s.github.configure_target(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::OpenApiSDK::Shared::GithubConfigureTargetRequest](../../models/shared/githubconfiguretargetrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubConfigureTargetResponse)](../../models/operations/githubconfiguretargetresponse.md)**



## trigger_action

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::GithubTriggerActionRequest.new(
  org: "<value>",
  repo_name: "<value>",
  gen_lock_id: "<id>",
)
    
res = s.github.trigger_action(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::OpenApiSDK::Shared::GithubTriggerActionRequest](../../models/shared/githubtriggeractionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::OpenApiSDK::Operations::GithubTriggerActionResponse)](../../models/operations/githubtriggeractionresponse.md)**



## get_action

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'


s = ::OpenApiSDK::SpeakeasyClientSDK.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.github.get_action(org="<value>", repo="<value>", target_name="<value>")

if ! res.github_get_action_response.nil?
  # handle response
end

```

### Parameters

| Parameter                              | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `org`                                  | *::String*                             | :heavy_check_mark:                     | N/A                                    |
| `repo`                                 | *::String*                             | :heavy_check_mark:                     | N/A                                    |
| `target_name`                          | *::String*                             | :heavy_minus_sign:                     | The targetName of the workflow target. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetGitHubActionResponse)](../../models/operations/getgithubactionresponse.md)**

