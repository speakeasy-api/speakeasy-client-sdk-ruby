# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module SpeakeasyClientSDK
  extend T::Sig

  SERVER_PROD = :prod
  SERVERS = {
    prod: 'https://api.prod.speakeasyapi.dev',
  }.freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::SpeakeasyClientSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, T.nilable(::SpeakeasyClientSDK::Shared::Security)
    field :server_url, T.nilable(String)
    field :server, Symbol
    field :globals, Hash[Symbol, Hash[Symbol, Hash[Symbol, Object]]]
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String


    sig { params(client: Faraday::Connection, security: T.nilable(::SpeakeasyClientSDK::Shared::Security), server_url: T.nilable(String), server: T.nilable(Symbol), globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server, globals)
      @client = client
      @server_url = server_url
      @server = server.nil? ? SERVER_PROD : server
      raise StandardError, "Invalid server \"#{server}\"" if !SERVERS.key?(@server)
      @security = security
      @globals = globals.nil? ? {} : globals
      @language = 'ruby'
      @openapi_doc_version = '0.4.0'
      @sdk_version = '4.1.1'
      @gen_version = '2.301.0'
      @user_agent = 'speakeasy-sdk/ruby 4.1.1 2.301.0 0.4.0 speakeasy_client_sdk_ruby'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server], {}]
    end
  end
end
