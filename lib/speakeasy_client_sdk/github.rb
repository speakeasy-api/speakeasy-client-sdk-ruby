# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig
  class Github
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::CheckAccessRequest)).returns(::SpeakeasyClientSDK::Operations::CheckAccessResponse) }
    def check_access(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/check_access"
      headers = {}
      query_params = Utils.get_query_params(::SpeakeasyClientSDK::Operations::CheckAccessRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::CheckAccessResponse.new(
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


    sig { params(request: ::SpeakeasyClientSDK::Shared::GithubConfigureCodeSamplesRequest).returns(::SpeakeasyClientSDK::Operations::ConfigureCodeSamplesResponse) }
    def configure_code_samples(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/configure_code_samples"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
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

      res = ::SpeakeasyClientSDK::Operations::ConfigureCodeSamplesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::GithubConfigureCodeSamplesResponse)
          res.github_configure_code_samples_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: ::SpeakeasyClientSDK::Shared::GithubConfigureMintlifyRepoRequest).returns(::SpeakeasyClientSDK::Operations::ConfigureMintlifyRepoResponse) }
    def configure_mintlify_repo(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/configure_mintlify_repo"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
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

      res = ::SpeakeasyClientSDK::Operations::ConfigureMintlifyRepoResponse.new(
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


    sig { params(request: ::SpeakeasyClientSDK::Shared::GithubConfigureTargetRequest).returns(::SpeakeasyClientSDK::Operations::ConfigureTargetResponse) }
    def configure_target(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/configure_target"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
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

      res = ::SpeakeasyClientSDK::Operations::ConfigureTargetResponse.new(
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


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::FetchPublishingPRsRequest)).returns(::SpeakeasyClientSDK::Operations::FetchPublishingPRsResponse) }
    def fetch_publishing_p_rs(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/publishing_prs"
      headers = {}
      query_params = Utils.get_query_params(::SpeakeasyClientSDK::Operations::FetchPublishingPRsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::FetchPublishingPRsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::GithubPublishingPRResponse)
          res.github_publishing_pr_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GetActionRequest)).returns(::SpeakeasyClientSDK::Operations::GetActionResponse) }
    def get_action(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/action"
      headers = {}
      query_params = Utils.get_query_params(::SpeakeasyClientSDK::Operations::GetActionRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GetActionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::GithubGetActionResponse)
          res.github_get_action_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsRequest)).returns(::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsResponse) }
    def github_check_publishing_secrets(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/publishing_secrets"
      headers = {}
      query_params = Utils.get_query_params(::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::SpeakeasyClientSDK::Operations::GithubCheckPublishingSecretsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::GithubMissingPublishingSecretsResponse)
          res.github_missing_publishing_secrets_response = out
        end
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::SpeakeasyClientSDK::Shared::Error)
          res.error = out
        end
      end
      res
    end


    sig { params(request: ::SpeakeasyClientSDK::Shared::GithubStorePublishingSecretsRequest).returns(::SpeakeasyClientSDK::Operations::GithubStorePublishingSecretsResponse) }
    def github_store_publishing_secrets(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/publishing_secrets"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
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

      res = ::SpeakeasyClientSDK::Operations::GithubStorePublishingSecretsResponse.new(
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


    sig { params(request: ::SpeakeasyClientSDK::Shared::GithubTriggerActionRequest).returns(::SpeakeasyClientSDK::Operations::TriggerActionResponse) }
    def trigger_action(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/github/trigger_action"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
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

      res = ::SpeakeasyClientSDK::Operations::TriggerActionResponse.new(
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
  end
end
