# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class QueryEventLogRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The filter to apply to the query.
      field :filters, T.nilable(::OpenApiSDK::Shared::Filters), { 'query_param': { 'field_name': 'filters', 'serialization': 'json' } }


      sig { params(filters: T.nilable(::OpenApiSDK::Shared::Filters)).void }
      def initialize(filters: nil)
        @filters = filters
      end
    end
  end
end
