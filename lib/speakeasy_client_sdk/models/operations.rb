# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module SpeakeasyClientSDK
  module Operations
    autoload :DeleteApiRequest, 'speakeasy_client_sdk/models/operations/deleteapi_request.rb'
    autoload :DeleteApiResponse, 'speakeasy_client_sdk/models/operations/deleteapi_response.rb'
    autoload :GenerateOpenApiSpecRequest, 'speakeasy_client_sdk/models/operations/generateopenapispec_request.rb'
    autoload :GenerateOpenApiSpecResponse, 'speakeasy_client_sdk/models/operations/generateopenapispec_response.rb'
    autoload :GeneratePostmanCollectionRequest, 'speakeasy_client_sdk/models/operations/generatepostmancollection_request.rb'
    autoload :GeneratePostmanCollectionResponse, 'speakeasy_client_sdk/models/operations/generatepostmancollection_response.rb'
    autoload :Op, 'speakeasy_client_sdk/models/operations/op.rb'
    autoload :GetAllApiVersionsRequest, 'speakeasy_client_sdk/models/operations/getallapiversions_request.rb'
    autoload :GetAllApiVersionsResponse, 'speakeasy_client_sdk/models/operations/getallapiversions_response.rb'
    autoload :QueryParamOp, 'speakeasy_client_sdk/models/operations/queryparam_op.rb'
    autoload :GetApisRequest, 'speakeasy_client_sdk/models/operations/getapis_request.rb'
    autoload :GetApisResponse, 'speakeasy_client_sdk/models/operations/getapis_response.rb'
    autoload :UpsertApiRequest, 'speakeasy_client_sdk/models/operations/upsertapi_request.rb'
    autoload :UpsertApiResponse, 'speakeasy_client_sdk/models/operations/upsertapi_response.rb'
    autoload :DeleteApiEndpointRequest, 'speakeasy_client_sdk/models/operations/deleteapiendpoint_request.rb'
    autoload :DeleteApiEndpointResponse, 'speakeasy_client_sdk/models/operations/deleteapiendpoint_response.rb'
    autoload :FindApiEndpointRequest, 'speakeasy_client_sdk/models/operations/findapiendpoint_request.rb'
    autoload :FindApiEndpointResponse, 'speakeasy_client_sdk/models/operations/findapiendpoint_response.rb'
    autoload :GenerateOpenApiSpecForApiEndpointRequest, 'speakeasy_client_sdk/models/operations/generateopenapispecforapiendpoint_request.rb'
    autoload :GenerateOpenApiSpecForApiEndpointResponse, 'speakeasy_client_sdk/models/operations/generateopenapispecforapiendpoint_response.rb'
    autoload :GeneratePostmanCollectionForApiEndpointRequest, 'speakeasy_client_sdk/models/operations/generatepostmancollectionforapiendpoint_request.rb'
    autoload :GeneratePostmanCollectionForApiEndpointResponse, 'speakeasy_client_sdk/models/operations/generatepostmancollectionforapiendpoint_response.rb'
    autoload :GetAllApiEndpointsRequest, 'speakeasy_client_sdk/models/operations/getallapiendpoints_request.rb'
    autoload :GetAllApiEndpointsResponse, 'speakeasy_client_sdk/models/operations/getallapiendpoints_response.rb'
    autoload :GetAllForVersionApiEndpointsRequest, 'speakeasy_client_sdk/models/operations/getallforversionapiendpoints_request.rb'
    autoload :GetAllForVersionApiEndpointsResponse, 'speakeasy_client_sdk/models/operations/getallforversionapiendpoints_response.rb'
    autoload :GetApiEndpointRequest, 'speakeasy_client_sdk/models/operations/getapiendpoint_request.rb'
    autoload :GetApiEndpointResponse, 'speakeasy_client_sdk/models/operations/getapiendpoint_response.rb'
    autoload :UpsertApiEndpointRequest, 'speakeasy_client_sdk/models/operations/upsertapiendpoint_request.rb'
    autoload :UpsertApiEndpointResponse, 'speakeasy_client_sdk/models/operations/upsertapiendpoint_response.rb'
    autoload :DeleteVersionMetadataRequest, 'speakeasy_client_sdk/models/operations/deleteversionmetadata_request.rb'
    autoload :DeleteVersionMetadataResponse, 'speakeasy_client_sdk/models/operations/deleteversionmetadata_response.rb'
    autoload :GetVersionMetadataRequest, 'speakeasy_client_sdk/models/operations/getversionmetadata_request.rb'
    autoload :GetVersionMetadataResponse, 'speakeasy_client_sdk/models/operations/getversionmetadata_response.rb'
    autoload :InsertVersionMetadataRequest, 'speakeasy_client_sdk/models/operations/insertversionmetadata_request.rb'
    autoload :InsertVersionMetadataResponse, 'speakeasy_client_sdk/models/operations/insertversionmetadata_response.rb'
    autoload :DeleteSchemaRequest, 'speakeasy_client_sdk/models/operations/deleteschema_request.rb'
    autoload :DeleteSchemaResponse, 'speakeasy_client_sdk/models/operations/deleteschema_response.rb'
    autoload :DownloadSchemaRequest, 'speakeasy_client_sdk/models/operations/downloadschema_request.rb'
    autoload :DownloadSchemaResponse, 'speakeasy_client_sdk/models/operations/downloadschema_response.rb'
    autoload :DownloadSchemaRevisionRequest, 'speakeasy_client_sdk/models/operations/downloadschemarevision_request.rb'
    autoload :DownloadSchemaRevisionResponse, 'speakeasy_client_sdk/models/operations/downloadschemarevision_response.rb'
    autoload :GetSchemaRequest, 'speakeasy_client_sdk/models/operations/getschema_request.rb'
    autoload :GetSchemaResponse, 'speakeasy_client_sdk/models/operations/getschema_response.rb'
    autoload :GetSchemaDiffRequest, 'speakeasy_client_sdk/models/operations/getschemadiff_request.rb'
    autoload :GetSchemaDiffResponse, 'speakeasy_client_sdk/models/operations/getschemadiff_response.rb'
    autoload :GetSchemaRevisionRequest, 'speakeasy_client_sdk/models/operations/getschemarevision_request.rb'
    autoload :GetSchemaRevisionResponse, 'speakeasy_client_sdk/models/operations/getschemarevision_response.rb'
    autoload :GetSchemasRequest, 'speakeasy_client_sdk/models/operations/getschemas_request.rb'
    autoload :GetSchemasResponse, 'speakeasy_client_sdk/models/operations/getschemas_response.rb'
    autoload :File, 'speakeasy_client_sdk/models/operations/file.rb'
    autoload :RegisterSchemaRequestBody, 'speakeasy_client_sdk/models/operations/registerschema_requestbody.rb'
    autoload :RegisterSchemaRequest, 'speakeasy_client_sdk/models/operations/registerschema_request.rb'
    autoload :RegisterSchemaResponse, 'speakeasy_client_sdk/models/operations/registerschema_response.rb'
    autoload :GetWorkspaceAccessRequest, 'speakeasy_client_sdk/models/operations/getworkspaceaccess_request.rb'
    autoload :GetWorkspaceAccessResponse, 'speakeasy_client_sdk/models/operations/getworkspaceaccess_response.rb'
    autoload :ValidateApiKeyResponse, 'speakeasy_client_sdk/models/operations/validateapikey_response.rb'
    autoload :GenerateRequestPostmanCollectionRequest, 'speakeasy_client_sdk/models/operations/generaterequestpostmancollection_request.rb'
    autoload :GenerateRequestPostmanCollectionResponse, 'speakeasy_client_sdk/models/operations/generaterequestpostmancollection_response.rb'
    autoload :GetRequestFromEventLogRequest, 'speakeasy_client_sdk/models/operations/getrequestfromeventlog_request.rb'
    autoload :GetRequestFromEventLogResponse, 'speakeasy_client_sdk/models/operations/getrequestfromeventlog_response.rb'
    autoload :QueryEventLogRequest, 'speakeasy_client_sdk/models/operations/queryeventlog_request.rb'
    autoload :QueryEventLogResponse, 'speakeasy_client_sdk/models/operations/queryeventlog_response.rb'
    autoload :GetEmbedAccessTokenRequest, 'speakeasy_client_sdk/models/operations/getembedaccesstoken_request.rb'
    autoload :GetEmbedAccessTokenResponse, 'speakeasy_client_sdk/models/operations/getembedaccesstoken_response.rb'
    autoload :GetValidEmbedAccessTokensResponse, 'speakeasy_client_sdk/models/operations/getvalidembedaccesstokens_response.rb'
    autoload :RevokeEmbedAccessTokenRequest, 'speakeasy_client_sdk/models/operations/revokeembedaccesstoken_request.rb'
    autoload :RevokeEmbedAccessTokenResponse, 'speakeasy_client_sdk/models/operations/revokeembedaccesstoken_response.rb'
    autoload :PostWorkspaceEventsRequest, 'speakeasy_client_sdk/models/operations/postworkspaceevents_request.rb'
    autoload :PostWorkspaceEventsResponse, 'speakeasy_client_sdk/models/operations/postworkspaceevents_response.rb'
  end
end