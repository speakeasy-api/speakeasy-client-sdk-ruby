// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

type DownloadSchemaRevisionRequest struct {
	// The ID of the Api to retrieve schemas for.
	APIID string `pathParam:"style=simple,explode=false,name=apiID"`
	// The revision ID of the schema to retrieve.
	RevisionID string `pathParam:"style=simple,explode=false,name=revisionID"`
	// The version ID of the Api to delete metadata for.
	VersionID string `pathParam:"style=simple,explode=false,name=versionID"`
}

type DownloadSchemaRevisionResponse struct {
	ContentType string
	// Default error response
	Error *shared.Error
	// OK
	Schema      []byte
	StatusCode  int
	RawResponse *http.Response
}
