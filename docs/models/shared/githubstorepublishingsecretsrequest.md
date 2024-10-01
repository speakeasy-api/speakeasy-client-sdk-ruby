# GithubStorePublishingSecretsRequest

A request to store publishing secrets for a github target


## Fields

| Field                                          | Type                                           | Required                                       | Description                                    |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `generate_gen_lock_id`                         | *::String*                                     | :heavy_check_mark:                             | The generation lock ID                         |
| `secrets`                                      | T::Hash[Symbol, *::String*]                    | :heavy_minus_sign:                             | A map of secrets to store in the GitHub target |