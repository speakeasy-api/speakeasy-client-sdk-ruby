# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig

  class SDK
    extend T::Sig

    attr_accessor :apis, :api_endpoints, :metadata, :schemas, :auth, :requests, :organizations, :embeds, :events

    sig do
      params(client: Faraday::Request,
             security: T.nilable(Shared::Security),
             workspace_id: ::String,
             server: T.nilable(Symbol),
             server_url: String,
             url_params: T::Hash[Symbol, String]).void
    end
    def initialize(client: nil,
                   security: nil,
                   workspace_id: nil,
                   server: nil,
                   server_url: nil,
                   url_params: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations
      # @param [Shared::Security] security The security details required for authentication
      # @param [::String] workspace_id: Configures the workspace_id parameter for all supported operations
      # @param [::Symbol] server The server identifier to use for all operations
      # @param [::String] server_url The server URL to use for all operations
      # @param [::Hash<::Symbol, ::String>] url_params Parameters to optionally template the server URL with

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end

      globals = {
        'parameters': {
          'queryParam': {
          },
          'pathParam': {
            'workspace_id': workspace_id,
          },
          'header': {
          }
        }
      }

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server, globals)
      init_sdks
    end

    sig { params(server_url: String).void }
    def config_server_url(server_url)
      @sdk_configuration.server_url = server_url
      init_sdks
    end

    sig { params(server: Symbol).void }
    def config_server(server)
      raise StandardError, "Invalid server \"#{server}\"" if !SERVERS.key?(server)
      @sdk_configuration.server = server
      init_sdks
    end

    sig { params(security: ::SpeakeasyClientSDK::Shared::Security).void }
    def config_security(security)
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @apis = Apis.new(@sdk_configuration)
      @api_endpoints = ApiEndpoints.new(@sdk_configuration)
      @metadata = Metadata.new(@sdk_configuration)
      @schemas = Schemas.new(@sdk_configuration)
      @auth = Auth.new(@sdk_configuration)
      @requests = Requests.new(@sdk_configuration)
      @organizations = Organizations.new(@sdk_configuration)
      @embeds = Embeds.new(@sdk_configuration)
      @events = Events.new(@sdk_configuration)
    end
  end
end
