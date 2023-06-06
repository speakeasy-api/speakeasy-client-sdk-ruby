# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Requests
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, language: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, language, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @language = language
      @sdk_version = sdk_version
      @gen_version = gen_version
    end

    sig { params(request: Operations::GenerateRequestPostmanCollectionRequest).returns(Utils::FieldAugmented) }
    def generate_request_postman_collection(request)
      # generate_request_postman_collection - Generate a Postman collection for a particular request.
      # Generates a Postman collection for a particular request. 
      # Allowing it to be replayed with the same inputs that were captured by the SDK.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GenerateRequestPostmanCollectionRequest,
        base_url,
        '/v1/eventlog/{requestID}/generate/postman',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/octet-stream;q=0'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GenerateRequestPostmanCollectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.postman_collection = r.env.response_body if Utils.match_content_type(content_type, 'application/octet-stream')
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: Operations::GetRequestFromEventLogRequest).returns(Utils::FieldAugmented) }
    def get_request_from_event_log(request)
      # get_request_from_event_log - Get information about a particular request.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetRequestFromEventLogRequest,
        base_url,
        '/v1/eventlog/{requestID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json;q=1, application/json;q=0'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetRequestFromEventLogResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::UnboundedRequest)
          res.unbounded_request = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end

    sig { params(request: Operations::QueryEventLogRequest).returns(Utils::FieldAugmented) }
    def query_event_log(request)
      # query_event_log - Query the event log to retrieve a list of requests.
      # Supports retrieving a list of request captured by the SDK for this workspace.
      # Allows the filtering of requests on a number of criteria such as ApiID, VersionID, Path, Method, etc.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/v1/eventlog/query"
      headers = {}
      query_params = Utils.get_query_params(Operations::QueryEventLogRequest, request)
      headers['Accept'] = 'application/json;q=1, application/json;q=0'
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::QueryEventLogResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::BoundedRequest])
          res.bounded_requests = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
