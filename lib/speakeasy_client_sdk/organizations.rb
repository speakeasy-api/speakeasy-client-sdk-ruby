# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class Organizations
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::SpeakeasyClientSDK::Operations::CreateFreeTrialResponse) }
    def create_free_trial
      # create_free_trial - Create a free trial for an organization
      # Creates a free trial for an organization
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/organization/free_trial"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::CreateFreeTrialResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetOrganizationRequest)).returns(::SpeakeasyClientSDK::Operations::GetOrganizationResponse) }
    def get_organization(request)
      # get_organization - Get organization
      # Get information about a particular organization.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::SpeakeasyClientSDK::Operations::GetOrganizationRequest,
        base_url,
        '/v1/organization/{organizationID}',
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

      res = ::SpeakeasyClientSDK::Operations::GetOrganizationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Organization)
          res.organization = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { returns(::SpeakeasyClientSDK::Operations::GetOrganizationUsageResponse) }
    def get_organization_usage
      # get_organization_usage - Get billing usage summary for a particular organization
      # Returns a billing usage summary by target languages for a particular organization
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/organization/usage"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GetOrganizationUsageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::OrganizationUsageResponse)
          res.organization_usage_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { returns(::SpeakeasyClientSDK::Operations::GetOrganizationsResponse) }
    def get_organizations
      # get_organizations - Get organizations for a user
      # Returns a list of organizations a user has access too
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/organization"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GetOrganizationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::SpeakeasyClientSDK::Shared::Organization])
          res.organizations = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
