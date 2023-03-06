require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
	module Shared
	

		class SchemaDiffValueChange < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			field :from, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('From') }}
			field :to, String, metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('To') }}

			sig{params(from: String, to: String).void }
			def initialize(from: nil, to: nil)
				@from=from
				@to=to
				
			end
		end

		class SchemaDiff < OpenApiSDK::Utils::FieldAugmented
			extend T::Sig
			        # A SchemaDiff represents a diff of two Schemas.
			
			field :additions, T::Array[String], metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('additions') }}
			field :deletions, T::Array[String], metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('deletions') }}
			field :modifications, T::Hash[Symbol, SchemaDiffValueChange], metadata={'format_json': { 'letter_case': OpenApiSDK::Utils::field_name('modifications') }}

			sig{params(additions: T::Array[String], deletions: T::Array[String], modifications: T::Hash[Symbol, SchemaDiffValueChange]).void }
			def initialize(additions: nil, deletions: nil, modifications: nil)
				@additions=additions
				@deletions=deletions
				@modifications=modifications
				
			end
		end
	end
end