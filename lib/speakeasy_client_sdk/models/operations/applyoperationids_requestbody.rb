# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Operations
  
    # Apply options
    class ApplyOperationIDsRequestBody < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether to apply the suggestions as an overlay or replace the existing operationIDs. Default: false
      field :as_overlay, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('as_overlay') } }


      sig { params(as_overlay: T.nilable(T::Boolean)).void }
      def initialize(as_overlay: nil)
        @as_overlay = as_overlay
      end
    end
  end
end
