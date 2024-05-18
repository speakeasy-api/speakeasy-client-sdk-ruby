# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module SpeakeasyClientSDK
  module Shared
  

    class OrganizationUsage < ::SpeakeasyClientSDK::Utils::FieldAugmented
      extend T::Sig

      # Indicates if the features are accessible
      field :accessible, T::Boolean, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('accessible') } }
      # Features that are accessible
      field :accessible_features, T::Array[::String], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('accessible_features') } }
      # List of generation lock IDs
      field :gen_lock_ids, T::Array[::String], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('gen_lock_ids') } }
      # The programming language used
      field :language, ::String, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('language') } }
      # Number of operations performed
      field :number_of_operations, ::Integer, { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('number_of_operations') } }
      # Features that have been used
      field :used_features, T::Array[::String], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('used_features') } }
      # List of workspace IDs
      field :workspaces, T::Array[::String], { 'format_json': { 'letter_case': ::SpeakeasyClientSDK::Utils.field_name('workspaces') } }


      sig { params(accessible: T::Boolean, accessible_features: T::Array[::String], gen_lock_ids: T::Array[::String], language: ::String, number_of_operations: ::Integer, used_features: T::Array[::String], workspaces: T::Array[::String]).void }
      def initialize(accessible: nil, accessible_features: nil, gen_lock_ids: nil, language: nil, number_of_operations: nil, used_features: nil, workspaces: nil)
        @accessible = accessible
        @accessible_features = accessible_features
        @gen_lock_ids = gen_lock_ids
        @language = language
        @number_of_operations = number_of_operations
        @used_features = used_features
        @workspaces = workspaces
      end
    end
  end
end
