# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module OpenApiSDK
  module Operations
    autoload :Op, 'open_api_sdk/models/operations/op.rb'
    autoload :GetApisRequest, 'open_api_sdk/models/operations/getapis_request.rb'
    autoload :GetApisResponse, 'open_api_sdk/models/operations/getapis_response.rb'
    autoload :QueryParamOp, 'open_api_sdk/models/operations/queryparam_op.rb'
    autoload :GetAllApiVersionsRequest, 'open_api_sdk/models/operations/getallapiversions_request.rb'
    autoload :GetAllApiVersionsResponse, 'open_api_sdk/models/operations/getallapiversions_response.rb'
    autoload :UpsertApiRequest, 'open_api_sdk/models/operations/upsertapi_request.rb'
    autoload :UpsertApiResponse, 'open_api_sdk/models/operations/upsertapi_response.rb'
    autoload :DeleteApiRequest, 'open_api_sdk/models/operations/deleteapi_request.rb'
    autoload :DeleteApiResponse, 'open_api_sdk/models/operations/deleteapi_response.rb'
    autoload :GenerateOpenApiSpecRequest, 'open_api_sdk/models/operations/generateopenapispec_request.rb'
    autoload :GenerateOpenApiSpecResponse, 'open_api_sdk/models/operations/generateopenapispec_response.rb'
    autoload :GeneratePostmanCollectionRequest, 'open_api_sdk/models/operations/generatepostmancollection_request.rb'
    autoload :GeneratePostmanCollectionResponse, 'open_api_sdk/models/operations/generatepostmancollection_response.rb'
    autoload :GetAllApiEndpointsRequest, 'open_api_sdk/models/operations/getallapiendpoints_request.rb'
    autoload :GetAllApiEndpointsResponse, 'open_api_sdk/models/operations/getallapiendpoints_response.rb'
    autoload :GetAllForVersionApiEndpointsRequest, 'open_api_sdk/models/operations/getallforversionapiendpoints_request.rb'
    autoload :GetAllForVersionApiEndpointsResponse, 'open_api_sdk/models/operations/getallforversionapiendpoints_response.rb'
    autoload :FindApiEndpointRequest, 'open_api_sdk/models/operations/findapiendpoint_request.rb'
    autoload :FindApiEndpointResponse, 'open_api_sdk/models/operations/findapiendpoint_response.rb'
    autoload :DeleteApiEndpointRequest, 'open_api_sdk/models/operations/deleteapiendpoint_request.rb'
    autoload :DeleteApiEndpointResponse, 'open_api_sdk/models/operations/deleteapiendpoint_response.rb'
    autoload :GetApiEndpointRequest, 'open_api_sdk/models/operations/getapiendpoint_request.rb'
    autoload :GetApiEndpointResponse, 'open_api_sdk/models/operations/getapiendpoint_response.rb'
    autoload :UpsertApiEndpointRequest, 'open_api_sdk/models/operations/upsertapiendpoint_request.rb'
    autoload :UpsertApiEndpointResponse, 'open_api_sdk/models/operations/upsertapiendpoint_response.rb'
    autoload :GenerateOpenApiSpecForApiEndpointRequest, 'open_api_sdk/models/operations/generateopenapispecforapiendpoint_request.rb'
    autoload :GenerateOpenApiSpecForApiEndpointResponse, 'open_api_sdk/models/operations/generateopenapispecforapiendpoint_response.rb'
    autoload :GeneratePostmanCollectionForApiEndpointRequest, 'open_api_sdk/models/operations/generatepostmancollectionforapiendpoint_request.rb'
    autoload :GeneratePostmanCollectionForApiEndpointResponse, 'open_api_sdk/models/operations/generatepostmancollectionforapiendpoint_response.rb'
    autoload :GetVersionMetadataRequest, 'open_api_sdk/models/operations/getversionmetadata_request.rb'
    autoload :GetVersionMetadataResponse, 'open_api_sdk/models/operations/getversionmetadata_response.rb'
    autoload :InsertVersionMetadataRequest, 'open_api_sdk/models/operations/insertversionmetadata_request.rb'
    autoload :InsertVersionMetadataResponse, 'open_api_sdk/models/operations/insertversionmetadata_response.rb'
    autoload :DeleteVersionMetadataRequest, 'open_api_sdk/models/operations/deleteversionmetadata_request.rb'
    autoload :DeleteVersionMetadataResponse, 'open_api_sdk/models/operations/deleteversionmetadata_response.rb'
    autoload :GetSchemaRequest, 'open_api_sdk/models/operations/getschema_request.rb'
    autoload :GetSchemaResponse, 'open_api_sdk/models/operations/getschema_response.rb'
    autoload :File, 'open_api_sdk/models/operations/file.rb'
    autoload :RegisterSchemaRequestBody, 'open_api_sdk/models/operations/registerschema_requestbody.rb'
    autoload :RegisterSchemaRequest, 'open_api_sdk/models/operations/registerschema_request.rb'
    autoload :RegisterSchemaResponse, 'open_api_sdk/models/operations/registerschema_response.rb'
    autoload :DownloadSchemaRequest, 'open_api_sdk/models/operations/downloadschema_request.rb'
    autoload :DownloadSchemaResponse, 'open_api_sdk/models/operations/downloadschema_response.rb'
    autoload :GetSchemaDiffRequest, 'open_api_sdk/models/operations/getschemadiff_request.rb'
    autoload :GetSchemaDiffResponse, 'open_api_sdk/models/operations/getschemadiff_response.rb'
    autoload :DeleteSchemaRequest, 'open_api_sdk/models/operations/deleteschema_request.rb'
    autoload :DeleteSchemaResponse, 'open_api_sdk/models/operations/deleteschema_response.rb'
    autoload :GetSchemaRevisionRequest, 'open_api_sdk/models/operations/getschemarevision_request.rb'
    autoload :GetSchemaRevisionResponse, 'open_api_sdk/models/operations/getschemarevision_response.rb'
    autoload :DownloadSchemaRevisionRequest, 'open_api_sdk/models/operations/downloadschemarevision_request.rb'
    autoload :DownloadSchemaRevisionResponse, 'open_api_sdk/models/operations/downloadschemarevision_response.rb'
    autoload :GetSchemasRequest, 'open_api_sdk/models/operations/getschemas_request.rb'
    autoload :GetSchemasResponse, 'open_api_sdk/models/operations/getschemas_response.rb'
    autoload :ValidateApiKeyResponse, 'open_api_sdk/models/operations/validateapikey_response.rb'
    autoload :GetUserResponse, 'open_api_sdk/models/operations/getuser_response.rb'
    autoload :GetAccessTokenRequest, 'open_api_sdk/models/operations/getaccesstoken_request.rb'
    autoload :GetAccessTokenResponse, 'open_api_sdk/models/operations/getaccesstoken_response.rb'
    autoload :GetWorkspaceAccessRequest, 'open_api_sdk/models/operations/getworkspaceaccess_request.rb'
    autoload :GetWorkspaceAccessResponse, 'open_api_sdk/models/operations/getworkspaceaccess_response.rb'
    autoload :QueryEventLogRequest, 'open_api_sdk/models/operations/queryeventlog_request.rb'
    autoload :QueryEventLogResponse, 'open_api_sdk/models/operations/queryeventlog_response.rb'
    autoload :GetRequestFromEventLogRequest, 'open_api_sdk/models/operations/getrequestfromeventlog_request.rb'
    autoload :GetRequestFromEventLogResponse, 'open_api_sdk/models/operations/getrequestfromeventlog_response.rb'
    autoload :GenerateRequestPostmanCollectionRequest, 'open_api_sdk/models/operations/generaterequestpostmancollection_request.rb'
    autoload :GenerateRequestPostmanCollectionResponse, 'open_api_sdk/models/operations/generaterequestpostmancollection_response.rb'
    autoload :CheckGithubAccessRequest, 'open_api_sdk/models/operations/checkgithubaccess_request.rb'
    autoload :CheckGithubAccessResponse, 'open_api_sdk/models/operations/checkgithubaccess_response.rb'
    autoload :GithubCheckPublishingPRsRequest, 'open_api_sdk/models/operations/githubcheckpublishingprs_request.rb'
    autoload :GithubCheckPublishingPRsResponse, 'open_api_sdk/models/operations/githubcheckpublishingprs_response.rb'
    autoload :GithubCheckPublishingSecretsRequest, 'open_api_sdk/models/operations/githubcheckpublishingsecrets_request.rb'
    autoload :GithubCheckPublishingSecretsResponse, 'open_api_sdk/models/operations/githubcheckpublishingsecrets_response.rb'
    autoload :GithubStorePublishingSecretsResponse, 'open_api_sdk/models/operations/githubstorepublishingsecrets_response.rb'
    autoload :GithubConfigureCodeSamplesResponse, 'open_api_sdk/models/operations/githubconfigurecodesamples_response.rb'
    autoload :GithubConfigureMintlifyRepoResponse, 'open_api_sdk/models/operations/githubconfiguremintlifyrepo_response.rb'
    autoload :GithubConfigureTargetResponse, 'open_api_sdk/models/operations/githubconfiguretarget_response.rb'
    autoload :GithubTriggerActionResponse, 'open_api_sdk/models/operations/githubtriggeraction_response.rb'
    autoload :GetGitHubActionRequest, 'open_api_sdk/models/operations/getgithubaction_request.rb'
    autoload :GetGitHubActionResponse, 'open_api_sdk/models/operations/getgithubaction_response.rb'
    autoload :GetOrganizationsResponse, 'open_api_sdk/models/operations/getorganizations_response.rb'
    autoload :CreateOrganizationResponse, 'open_api_sdk/models/operations/createorganization_response.rb'
    autoload :GetOrganizationRequest, 'open_api_sdk/models/operations/getorganization_request.rb'
    autoload :GetOrganizationResponse, 'open_api_sdk/models/operations/getorganization_response.rb'
    autoload :CreateFreeTrialResponse, 'open_api_sdk/models/operations/createfreetrial_response.rb'
    autoload :GetOrganizationUsageResponse, 'open_api_sdk/models/operations/getorganizationusage_response.rb'
    autoload :GetEmbedAccessTokenRequest, 'open_api_sdk/models/operations/getembedaccesstoken_request.rb'
    autoload :GetEmbedAccessTokenResponse, 'open_api_sdk/models/operations/getembedaccesstoken_response.rb'
    autoload :GetValidEmbedAccessTokensResponse, 'open_api_sdk/models/operations/getvalidembedaccesstokens_response.rb'
    autoload :RevokeEmbedAccessTokenRequest, 'open_api_sdk/models/operations/revokeembedaccesstoken_request.rb'
    autoload :RevokeEmbedAccessTokenResponse, 'open_api_sdk/models/operations/revokeembedaccesstoken_response.rb'
    autoload :GetWorkspacesResponse, 'open_api_sdk/models/operations/getworkspaces_response.rb'
    autoload :GetWorkspaceByContextResponse, 'open_api_sdk/models/operations/getworkspacebycontext_response.rb'
    autoload :CreateWorkspaceResponse, 'open_api_sdk/models/operations/createworkspace_response.rb'
    autoload :GetWorkspaceRequest, 'open_api_sdk/models/operations/getworkspace_request.rb'
    autoload :GetWorkspaceResponse, 'open_api_sdk/models/operations/getworkspace_response.rb'
    autoload :UpdateWorkspaceDetailsRequest, 'open_api_sdk/models/operations/updateworkspacedetails_request.rb'
    autoload :UpdateWorkspaceDetailsResponse, 'open_api_sdk/models/operations/updateworkspacedetails_response.rb'
    autoload :GetWorkspaceSettingsRequest, 'open_api_sdk/models/operations/getworkspacesettings_request.rb'
    autoload :GetWorkspaceSettingsResponse, 'open_api_sdk/models/operations/getworkspacesettings_response.rb'
    autoload :UpdateWorkspaceSettingsRequest, 'open_api_sdk/models/operations/updateworkspacesettings_request.rb'
    autoload :UpdateWorkspaceSettingsResponse, 'open_api_sdk/models/operations/updateworkspacesettings_response.rb'
    autoload :GetWorkspaceTeamRequest, 'open_api_sdk/models/operations/getworkspaceteam_request.rb'
    autoload :GetWorkspaceTeamResponse, 'open_api_sdk/models/operations/getworkspaceteam_response.rb'
    autoload :GrantUserAccessToWorkspaceRequest, 'open_api_sdk/models/operations/grantuseraccesstoworkspace_request.rb'
    autoload :GrantUserAccessToWorkspaceResponse, 'open_api_sdk/models/operations/grantuseraccesstoworkspace_response.rb'
    autoload :RevokeUserAccessToWorkspaceRequest, 'open_api_sdk/models/operations/revokeuseraccesstoworkspace_request.rb'
    autoload :RevokeUserAccessToWorkspaceResponse, 'open_api_sdk/models/operations/revokeuseraccesstoworkspace_response.rb'
    autoload :GetWorkspaceTokensRequest, 'open_api_sdk/models/operations/getworkspacetokens_request.rb'
    autoload :GetWorkspaceTokensResponse, 'open_api_sdk/models/operations/getworkspacetokens_response.rb'
    autoload :CreateWorkspaceTokenRequest, 'open_api_sdk/models/operations/createworkspacetoken_request.rb'
    autoload :CreateWorkspaceTokenResponse, 'open_api_sdk/models/operations/createworkspacetoken_response.rb'
    autoload :DeleteWorkspaceTokenRequest, 'open_api_sdk/models/operations/deleteworkspacetoken_request.rb'
    autoload :DeleteWorkspaceTokenResponse, 'open_api_sdk/models/operations/deleteworkspacetoken_response.rb'
    autoload :GetWorkspaceFeatureFlagsRequest, 'open_api_sdk/models/operations/getworkspacefeatureflags_request.rb'
    autoload :GetWorkspaceFeatureFlagsResponse, 'open_api_sdk/models/operations/getworkspacefeatureflags_response.rb'
    autoload :SearchWorkspaceEventsRequest, 'open_api_sdk/models/operations/searchworkspaceevents_request.rb'
    autoload :SearchWorkspaceEventsResponse, 'open_api_sdk/models/operations/searchworkspaceevents_response.rb'
    autoload :PostWorkspaceEventsRequest, 'open_api_sdk/models/operations/postworkspaceevents_request.rb'
    autoload :PostWorkspaceEventsResponse, 'open_api_sdk/models/operations/postworkspaceevents_response.rb'
    autoload :GetWorkspaceEventsByTargetRequest, 'open_api_sdk/models/operations/getworkspaceeventsbytarget_request.rb'
    autoload :GetWorkspaceEventsByTargetResponse, 'open_api_sdk/models/operations/getworkspaceeventsbytarget_response.rb'
    autoload :GetWorkspaceTargetsRequest, 'open_api_sdk/models/operations/getworkspacetargets_request.rb'
    autoload :GetWorkspaceTargetsResponse, 'open_api_sdk/models/operations/getworkspacetargets_response.rb'
    autoload :GetWorkspaceTargetsDeprecatedRequest, 'open_api_sdk/models/operations/getworkspacetargetsdeprecated_request.rb'
    autoload :GetWorkspaceTargetsDeprecatedResponse, 'open_api_sdk/models/operations/getworkspacetargetsdeprecated_response.rb'
    autoload :PreflightResponse, 'open_api_sdk/models/operations/preflight_response.rb'
    autoload :GetNamespacesResponse, 'open_api_sdk/models/operations/getnamespaces_response.rb'
    autoload :GetRevisionsRequest, 'open_api_sdk/models/operations/getrevisions_request.rb'
    autoload :GetRevisionsResponse, 'open_api_sdk/models/operations/getrevisions_response.rb'
    autoload :GetTagsRequest, 'open_api_sdk/models/operations/gettags_request.rb'
    autoload :GetTagsResponse, 'open_api_sdk/models/operations/gettags_response.rb'
    autoload :PostTagsRequest, 'open_api_sdk/models/operations/posttags_request.rb'
    autoload :PostTagsResponse, 'open_api_sdk/models/operations/posttags_response.rb'
    autoload :GetManifestRequest, 'open_api_sdk/models/operations/getmanifest_request.rb'
    autoload :GetManifestResponse, 'open_api_sdk/models/operations/getmanifest_response.rb'
    autoload :GetBlobRequest, 'open_api_sdk/models/operations/getblob_request.rb'
    autoload :GetBlobResponse, 'open_api_sdk/models/operations/getblob_response.rb'
    autoload :UploadReportFile, 'open_api_sdk/models/operations/uploadreport_file.rb'
    autoload :UploadReportRequestBody, 'open_api_sdk/models/operations/uploadreport_requestbody.rb'
    autoload :UploadReportUploadedReport, 'open_api_sdk/models/operations/uploadreport_uploadedreport.rb'
    autoload :UploadReportResponse, 'open_api_sdk/models/operations/uploadreport_response.rb'
    autoload :GetLintingReportSignedUrlRequest, 'open_api_sdk/models/operations/getlintingreportsignedurl_request.rb'
    autoload :GetLintingReportSignedUrlSignedAccess, 'open_api_sdk/models/operations/getlintingreportsignedurl_signedaccess.rb'
    autoload :GetLintingReportSignedUrlResponse, 'open_api_sdk/models/operations/getlintingreportsignedurl_response.rb'
    autoload :GetChangesReportSignedUrlRequest, 'open_api_sdk/models/operations/getchangesreportsignedurl_request.rb'
    autoload :GetChangesReportSignedUrlSignedAccess, 'open_api_sdk/models/operations/getchangesreportsignedurl_signedaccess.rb'
    autoload :GetChangesReportSignedUrlResponse, 'open_api_sdk/models/operations/getchangesreportsignedurl_response.rb'
    autoload :Schema, 'open_api_sdk/models/operations/schema.rb'
    autoload :SuggestOpenAPIRequestBody, 'open_api_sdk/models/operations/suggestopenapi_requestbody.rb'
    autoload :SuggestOpenAPIRequest, 'open_api_sdk/models/operations/suggestopenapi_request.rb'
    autoload :SuggestOpenAPIResponse, 'open_api_sdk/models/operations/suggestopenapi_response.rb'
    autoload :SuggestRequest, 'open_api_sdk/models/operations/suggest_request.rb'
    autoload :SuggestResponse, 'open_api_sdk/models/operations/suggest_response.rb'
    autoload :SuggestOpenAPIRegistryRequest, 'open_api_sdk/models/operations/suggestopenapiregistry_request.rb'
    autoload :SuggestOpenAPIRegistryResponse, 'open_api_sdk/models/operations/suggestopenapiregistry_response.rb'
    autoload :CreateRequestBody, 'open_api_sdk/models/operations/create_requestbody.rb'
    autoload :CreateResponse, 'open_api_sdk/models/operations/create_response.rb'
  end
end
