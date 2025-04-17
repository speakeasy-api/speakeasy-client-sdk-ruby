# Github
(*github*)

## Overview

REST APIs for managing the github integration

### Available Operations

* [get_setup](#get_setup)
* [check_access](#check_access)
* [link_github](#link_github)
* [check_publishing_p_rs](#check_publishing_p_rs)
* [check_publishing_secrets](#check_publishing_secrets)
* [store_publishing_secrets](#store_publishing_secrets)
* [configure_code_samples](#configure_code_samples)
* [configure_mintlify_repo](#configure_mintlify_repo)
* [configure_target](#configure_target)
* [trigger_action](#trigger_action)
* [get_action](#get_action)

## get_setup

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.github.get_setup(org="<value>", repo="<value>", generate_gen_lock_id="<id>")

if ! res.github_setup_state_response.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `org`                  | *::String*             | :heavy_check_mark:     | N/A                    |
| `repo`                 | *::String*             | :heavy_check_mark:     | N/A                    |
| `generate_gen_lock_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::GetGithubSetupStateResponse)](../../models/operations/getgithubsetupstateresponse.md)**



## check_access

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::CheckGithubAccessResponse)](../../models/operations/checkgithubaccessresponse.md)**



## link_github

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.github.link_github(installation_id="<id>", github_org="<value>", github_oidc_token="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `installation_id`     | *T.nilable(::String)* | :heavy_minus_sign:    | N/A                   |
| `github_org`          | *T.nilable(::String)* | :heavy_minus_sign:    | N/A                   |
| `github_oidc_token`   | *T.nilable(::String)* | :heavy_minus_sign:    | N/A                   |

### Response

**[T.nilable(Models::Operations::LinkGithubAccessResponse)](../../models/operations/linkgithubaccessresponse.md)**



## check_publishing_p_rs

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::GithubCheckPublishingPRsResponse)](../../models/operations/githubcheckpublishingprsresponse.md)**



## check_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::GithubCheckPublishingSecretsResponse)](../../models/operations/githubcheckpublishingsecretsresponse.md)**



## store_publishing_secrets

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::GithubStorePublishingSecretsRequest.new(
  generate_gen_lock_id: "<id>",
)

res = s.github.store_publishing_secrets(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Shared::GithubStorePublishingSecretsRequest](../../models/shared/githubstorepublishingsecretsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::GithubStorePublishingSecretsResponse)](../../models/operations/githubstorepublishingsecretsresponse.md)**



## configure_code_samples

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::GithubConfigureCodeSamplesRequest.new(
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

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Shared::GithubConfigureCodeSamplesRequest](../../models/shared/githubconfigurecodesamplesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::GithubConfigureCodeSamplesResponse)](../../models/operations/githubconfigurecodesamplesresponse.md)**



## configure_mintlify_repo

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::GithubConfigureMintlifyRepoRequest.new(
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

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Shared::GithubConfigureMintlifyRepoRequest](../../models/shared/githubconfiguremintlifyreporequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::GithubConfigureMintlifyRepoResponse)](../../models/operations/githubconfiguremintlifyreporesponse.md)**



## configure_target

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::GithubConfigureTargetRequest.new(
  org: "<value>",
  repo_name: "<value>",
)

res = s.github.configure_target(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Shared::GithubConfigureTargetRequest](../../models/shared/githubconfiguretargetrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::GithubConfigureTargetResponse)](../../models/operations/githubconfiguretargetresponse.md)**



## trigger_action

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Shared::GithubTriggerActionRequest.new(
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

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Shared::GithubTriggerActionRequest](../../models/shared/githubtriggeractionrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::GithubTriggerActionResponse)](../../models/operations/githubtriggeractionresponse.md)**



## get_action

### Example Usage

```ruby
require 'speakeasy_client_sdk_ruby'

s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: "<YOUR_API_KEY_HERE>",
      ),
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
| `target_name`                          | *T.nilable(::String)*                  | :heavy_minus_sign:                     | The targetName of the workflow target. |

### Response

**[T.nilable(Models::Operations::GetGitHubActionResponse)](../../models/operations/getgithubactionresponse.md)**

