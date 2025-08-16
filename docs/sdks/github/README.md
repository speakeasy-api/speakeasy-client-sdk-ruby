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

<!-- UsageSnippet language="ruby" operationID="getGithubSetupState" method="get" path="/v1/github/setup" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.get_setup(org: '<value>', repo: '<value>', generate_gen_lock_id: '<id>')

unless res.github_setup_state_response.nil?
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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## check_access

### Example Usage

<!-- UsageSnippet language="ruby" operationID="checkGithubAccess" method="get" path="/v1/github/check_access" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.check_access(org: '<value>', repo: '<value>')

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## link_github

### Example Usage

<!-- UsageSnippet language="ruby" operationID="linkGithubAccess" method="post" path="/v1/github/link" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.link_github()

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## check_publishing_p_rs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubCheckPublishingPRs" method="get" path="/v1/github/publishing_prs" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.check_publishing_p_rs(generate_gen_lock_id: '<id>', org: '<value>', repo: '<value>')

unless res.github_publishing_pr_response.nil?
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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## check_publishing_secrets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubCheckPublishingSecrets" method="get" path="/v1/github/publishing_secrets" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.check_publishing_secrets(generate_gen_lock_id: '<id>')

unless res.github_missing_publishing_secrets_response.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `generate_gen_lock_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::GithubCheckPublishingSecretsResponse)](../../models/operations/githubcheckpublishingsecretsresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## store_publishing_secrets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubStorePublishingSecrets" method="post" path="/v1/github/publishing_secrets" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::GithubStorePublishingSecretsRequest.new(
  generate_gen_lock_id: '<id>',
)

res = s.github.store_publishing_secrets(request: req)

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## configure_code_samples

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubConfigureCodeSamples" method="post" path="/v1/github/configure_code_samples" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::GithubConfigureCodeSamplesRequest.new(
  org: '<value>',
  repo: '<value>',
  target_name: '<value>',
)

res = s.github.configure_code_samples(request: req)

unless res.github_configure_code_samples_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Shared::GithubConfigureCodeSamplesRequest](../../models/shared/githubconfigurecodesamplesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::GithubConfigureCodeSamplesResponse)](../../models/operations/githubconfigurecodesamplesresponse.md)**

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## configure_mintlify_repo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubConfigureMintlifyRepo" method="post" path="/v1/github/configure_mintlify_repo" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::GithubConfigureMintlifyRepoRequest.new(
  org: '<value>',
  repo: '<value>',
  input: '<value>',
  overlays: [
    '<value 1>',
  ],
)

res = s.github.configure_mintlify_repo(request: req)

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## configure_target

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubConfigureTarget" method="post" path="/v1/github/configure_target" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::GithubConfigureTargetRequest.new(
  org: '<value>',
  repo_name: '<value>',
)

res = s.github.configure_target(request: req)

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## trigger_action

### Example Usage

<!-- UsageSnippet language="ruby" operationID="githubTriggerAction" method="post" path="/v1/github/trigger_action" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::GithubTriggerActionRequest.new(
  org: '<value>',
  repo_name: '<value>',
  gen_lock_id: '<id>',
)

res = s.github.trigger_action(request: req)

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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |

## get_action

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGitHubAction" method="get" path="/v1/github/action" -->
```ruby
require 'speakeasy_client_sdk_ruby'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::SpeakeasyClientSDK.new(
      security: Models::Shared::Security.new(
        api_key: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.github.get_action(org: '<value>', repo: '<value>')

unless res.github_get_action_response.nil?
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

### Errors

| Error Type            | Status Code           | Content Type          |
| --------------------- | --------------------- | --------------------- |
| Models::Errors::Error | 4XX                   | application/json      |
| Errors::APIError      | 5XX                   | \*/\*                 |