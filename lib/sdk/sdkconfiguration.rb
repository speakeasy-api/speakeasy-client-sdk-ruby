# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig


  SERVER_PROD = 'prod'
  SERVERS = {
    SERVER_PROD: 'https://api.prod.speakeasyapi.dev',
  }.freeze
  # Contains the list of servers available to the SDK


  class SDKConfiguration < OpenApiSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, Shared::Security
    field :server_url, T.nilable(String)
    field :server, T.nilable(String)
    field :server_defaults, Hash[Symbol, Hash[Symbol, String]], { 'default_factory': Hash}
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String
  
    
    sig { params(client: Faraday::Connection, security: T.nilable(Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_defaults: T::Hash[Symbol, String], globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server_idx, server_defaults, globals)
      @client = client
      @server = server_url.nil? ? '' : server_url
      @language = 'ruby'
      @openapi_doc_version = '0.3.0'
      @sdk_version = '1.26.0'
      @gen_version = '2.142.2'
      @user_agent = 'speakeasy-sdk/ruby 1.26.0 2.142.2 0.3.0 speakeasy_client_sdk_ruby'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      @server = SERVER_PROD if @server.nil?

      [SERVERS[@server], {}]
    end
  end
end
