// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

type DownloadSchemaRequest struct {
	// The ID of the Api to download the schema for.
	APIID string `pathParam:"style=simple,explode=false,name=apiID"`
	// The version ID of the Api to delete metadata for.
	VersionID string `pathParam:"style=simple,explode=false,name=versionID"`
}

type DownloadSchemaResponse struct {
	ContentType string
	// Default error response
	Error *shared.Error
	// OK
	Schema      []byte
	StatusCode  int
	RawResponse *http.Response
}
