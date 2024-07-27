# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module SpeakeasyClientSDK
  module Shared
    autoload :Error, 'speakeasy_client_sdk/models/shared/error.rb'
    autoload :GenerateOpenApiSpecDiff, 'speakeasy_client_sdk/models/shared/generateopenapispecdiff.rb'
    autoload :Api, 'speakeasy_client_sdk/models/shared/api.rb'
    autoload :ApiInput, 'speakeasy_client_sdk/models/shared/api_input.rb'
    autoload :ApiEndpoint, 'speakeasy_client_sdk/models/shared/apiendpoint.rb'
    autoload :ApiEndpointInput, 'speakeasy_client_sdk/models/shared/apiendpoint_input.rb'
    autoload :VersionMetadata, 'speakeasy_client_sdk/models/shared/versionmetadata.rb'
    autoload :VersionMetadataInput, 'speakeasy_client_sdk/models/shared/versionmetadata_input.rb'
    autoload :Schema, 'speakeasy_client_sdk/models/shared/schema.rb'
    autoload :ValueChange, 'speakeasy_client_sdk/models/shared/valuechange.rb'
    autoload :SchemaDiff, 'speakeasy_client_sdk/models/shared/schemadiff.rb'
    autoload :Manifest, 'speakeasy_client_sdk/models/shared/manifest.rb'
    autoload :V2Descriptor, 'speakeasy_client_sdk/models/shared/v2descriptor.rb'
    autoload :Annotations, 'speakeasy_client_sdk/models/shared/annotations.rb'
    autoload :GetNamespacesResponse, 'speakeasy_client_sdk/models/shared/getnamespacesresponse.rb'
    autoload :Namespace, 'speakeasy_client_sdk/models/shared/namespace.rb'
    autoload :OASSummary, 'speakeasy_client_sdk/models/shared/oassummary.rb'
    autoload :OASOperation, 'speakeasy_client_sdk/models/shared/oasoperation.rb'
    autoload :License, 'speakeasy_client_sdk/models/shared/license.rb'
    autoload :OASInfo, 'speakeasy_client_sdk/models/shared/oasinfo.rb'
    autoload :GetRevisionsResponse, 'speakeasy_client_sdk/models/shared/getrevisionsresponse.rb'
    autoload :Revision, 'speakeasy_client_sdk/models/shared/revision.rb'
    autoload :GetTagsResponse, 'speakeasy_client_sdk/models/shared/gettagsresponse.rb'
    autoload :Tag, 'speakeasy_client_sdk/models/shared/tag.rb'
    autoload :AddTags, 'speakeasy_client_sdk/models/shared/addtags.rb'
    autoload :PreflightToken, 'speakeasy_client_sdk/models/shared/preflighttoken.rb'
    autoload :PreflightRequest, 'speakeasy_client_sdk/models/shared/preflightrequest.rb'
    autoload :Claims, 'speakeasy_client_sdk/models/shared/claims.rb'
    autoload :AccessTokenUser, 'speakeasy_client_sdk/models/shared/accesstoken_user.rb'
    autoload :AccessTokenAccountType, 'speakeasy_client_sdk/models/shared/accesstoken_account_type.rb'
    autoload :Workspaces, 'speakeasy_client_sdk/models/shared/workspaces.rb'
    autoload :AccessToken, 'speakeasy_client_sdk/models/shared/accesstoken.rb'
    autoload :FeatureFlag, 'speakeasy_client_sdk/models/shared/featureflag.rb'
    autoload :User, 'speakeasy_client_sdk/models/shared/user.rb'
    autoload :Level, 'speakeasy_client_sdk/models/shared/level.rb'
    autoload :AccessDetails, 'speakeasy_client_sdk/models/shared/accessdetails.rb'
    autoload :AccountType, 'speakeasy_client_sdk/models/shared/account_type.rb'
    autoload :ApiKeyDetails, 'speakeasy_client_sdk/models/shared/apikeydetails.rb'
    autoload :UnboundedRequest, 'speakeasy_client_sdk/models/shared/unboundedrequest.rb'
    autoload :BoundedRequest, 'speakeasy_client_sdk/models/shared/boundedrequest.rb'
    autoload :RequestMetadata, 'speakeasy_client_sdk/models/shared/requestmetadata.rb'
    autoload :Filters, 'speakeasy_client_sdk/models/shared/filters.rb'
    autoload :Filter, 'speakeasy_client_sdk/models/shared/filter.rb'
    autoload :GithubConfigureCodeSamplesResponse, 'speakeasy_client_sdk/models/shared/githubconfigurecodesamplesresponse.rb'
    autoload :Auth, 'speakeasy_client_sdk/models/shared/auth.rb'
    autoload :WorkflowDocument, 'speakeasy_client_sdk/models/shared/workflowdocument.rb'
    autoload :GithubConfigureCodeSamplesRequest, 'speakeasy_client_sdk/models/shared/githubconfigurecodesamplesrequest.rb'
    autoload :GithubConfigureMintlifyRepoRequest, 'speakeasy_client_sdk/models/shared/githubconfiguremintlifyreporequest.rb'
    autoload :GithubConfigureTargetRequest, 'speakeasy_client_sdk/models/shared/githubconfiguretargetrequest.rb'
    autoload :GithubPublishingPRResponse, 'speakeasy_client_sdk/models/shared/githubpublishingprresponse.rb'
    autoload :GithubGetActionResponse, 'speakeasy_client_sdk/models/shared/githubgetactionresponse.rb'
    autoload :GithubMissingPublishingSecretsResponse, 'speakeasy_client_sdk/models/shared/githubmissingpublishingsecretsresponse.rb'
    autoload :GithubStorePublishingSecretsRequest, 'speakeasy_client_sdk/models/shared/githubstorepublishingsecretsrequest.rb'
    autoload :GithubTriggerActionRequest, 'speakeasy_client_sdk/models/shared/githubtriggeractionrequest.rb'
    autoload :OrganizationAccountType, 'speakeasy_client_sdk/models/shared/organization_account_type.rb'
    autoload :Organization, 'speakeasy_client_sdk/models/shared/organization.rb'
    autoload :OrganizationUsageResponse, 'speakeasy_client_sdk/models/shared/organizationusageresponse.rb'
    autoload :OrganizationUsage, 'speakeasy_client_sdk/models/shared/organizationusage.rb'
    autoload :Type, 'speakeasy_client_sdk/models/shared/type.rb'
    autoload :Report, 'speakeasy_client_sdk/models/shared/report.rb'
    autoload :ShortURL, 'speakeasy_client_sdk/models/shared/shorturl.rb'
    autoload :SuggestedOperationIDs, 'speakeasy_client_sdk/models/shared/suggestedoperationids.rb'
    autoload :DepthStyle, 'speakeasy_client_sdk/models/shared/depth_style.rb'
    autoload :Style, 'speakeasy_client_sdk/models/shared/style.rb'
    autoload :SuggestOperationIDsOpts, 'speakeasy_client_sdk/models/shared/suggestoperationidsopts.rb'
    autoload :EmbedAccessTokenResponse, 'speakeasy_client_sdk/models/shared/embedaccesstokenresponse.rb'
    autoload :EmbedToken, 'speakeasy_client_sdk/models/shared/embedtoken.rb'
    autoload :Workspace, 'speakeasy_client_sdk/models/shared/workspace.rb'
    autoload :GenerateBumpType, 'speakeasy_client_sdk/models/shared/generate_bump_type.rb'
    autoload :OpenapiDiffBumpType, 'speakeasy_client_sdk/models/shared/openapi_diff_bump_type.rb'
    autoload :CliEvent, 'speakeasy_client_sdk/models/shared/clievent.rb'
    autoload :InteractionType, 'speakeasy_client_sdk/models/shared/interactiontype.rb'
    autoload :TargetSDK, 'speakeasy_client_sdk/models/shared/targetsdk.rb'
    autoload :Security, 'speakeasy_client_sdk/models/shared/security.rb'
  end
end
