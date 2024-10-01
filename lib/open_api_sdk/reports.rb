# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Reports
    extend T::Sig
    # REST APIs for managing reports

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: ::OpenApiSDK::Operations::UploadReportRequestBody).returns(::OpenApiSDK::Operations::UploadReportResponse) }
    def upload(request)
      # upload - Upload a report.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/reports"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :multipart)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::UploadReportResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::UploadReportUploadedReport)
          res.uploaded_report = out
        end
      end
      res
    end


    sig { params(document_checksum: ::String).returns(::OpenApiSDK::Operations::GetLintingReportSignedUrlResponse) }
    def get_linting_report_url(document_checksum)
      # get_linting_report_url - Get the signed access url for the linting reports for a particular document.
      request = ::OpenApiSDK::Operations::GetLintingReportSignedUrlRequest.new(
        
        document_checksum: document_checksum
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetLintingReportSignedUrlRequest,
        base_url,
        '/v1/reports/linting/{documentChecksum}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLintingReportSignedUrlResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLintingReportSignedUrlSignedAccess)
          res.signed_access = out
        end
      end
      res
    end


    sig { params(document_checksum: ::String).returns(::OpenApiSDK::Operations::GetChangesReportSignedUrlResponse) }
    def get_changes_signed_url(document_checksum)
      # get_changes_signed_url - Get the signed access url for the change reports for a particular document.
      request = ::OpenApiSDK::Operations::GetChangesReportSignedUrlRequest.new(
        
        document_checksum: document_checksum
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetChangesReportSignedUrlRequest,
        base_url,
        '/v1/reports/changes/{documentChecksum}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetChangesReportSignedUrlResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetChangesReportSignedUrlSignedAccess)
          res.signed_access = out
        end
      end
      res
    end
  end
end
