# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module SpeakeasyClientSDK
  module Shared
    # Filters are used to query requests.
    class Filters < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # A list of filters to apply to the query.
      field :filters, T::Array[Shared::Filter], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('filters') } }
      # The maximum number of results to return.
      field :limit, Integer, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('limit') } }
      # The offset to start the query from.
      field :offset, Integer, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('offset') } }
      # The operator to use when combining filters.
      field :operator, String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('operator') } }


      sig { params(filters: T::Array[Shared::Filter], limit: Integer, offset: Integer, operator: String).void }
      def initialize(filters: nil, limit: nil, offset: nil, operator: nil)
        @filters = filters
        @limit = limit
        @offset = offset
        @operator = operator
      end
    end
  end
end
