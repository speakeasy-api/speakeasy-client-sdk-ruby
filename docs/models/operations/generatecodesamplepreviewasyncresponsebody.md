# GenerateCodeSamplePreviewAsyncResponseBody

Job accepted, returns a job ID to poll for status and result


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `job_id`                                                                            | *::String*                                                                          | :heavy_check_mark:                                                                  | The job ID for polling                                                              |
| `status`                                                                            | [Models::Shared::CodeSamplesJobStatus](../../models/shared/codesamplesjobstatus.md) | :heavy_check_mark:                                                                  | The current status of the job. Possible values are `pending` or `running`.          |