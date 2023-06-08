# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'speakeasy_client_sdk_ruby'
  s.version     = '1.1.0'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['Apache-2.0']
  s.summary     = ''
  s.homepage    = 'https://github.com/speakeasy-api/openapi-generation'
  s.description = 'Ruby Client SDK Generated by Speakeasy'
  s.authors     = ['Speakeasy']
  s.metadata    = {
    'homepage_uri' => 'https://github.com/speakeasy-api/openapi-generation',
    'documentation_uri' => 'https://github.com/speakeasy-api/openapi-generation',
    'source_code_uri' => 'https://github.com/speakeasy-api/openapi-generation'
  }

  s.files         = Dir['{lib,test}/**/*']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0'

  s.add_dependency('faraday')
  s.add_dependency('faraday-multipart')
  s.add_dependency('rack')
  s.add_dependency('rake')

  s.add_development_dependency('minitest')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('sorbet-runtime')
end
