# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module T
  def self.arr?(t)
    if t.respond_to? :underlying_class
      return t.underlying_class == ::Array
    end
    false
  end

  def self.arr_of(t)
    get_raw_type(t.type)
  end

  def self.hash?(t)
    if t.respond_to? :underlying_class
      return t.underlying_class == ::Hash
    end
    false
  end

  def self.hash_of(t)
    get_raw_type(t.values)
  end

  def self.nilable?(t)
    t.respond_to? :unwrap_nilable
  end

  def self.nilable_of(t)
    if t.respond_to? :unwrap_nilable
      return simplify_type t.unwrap_nilable
    end
    nil
  end

  def self.simplifiable?(t)
    return t.is_a? T::Types::Simple
  end

  def self.simplify_type(t)
    if t.is_a? T::Types::Simple
      return t.raw_type
    end
    t
  end

  def self.get_raw_type(t)
    if t.respond_to? :raw_type
      return t.raw_type
    elsif t.respond_to? :raw_a
      return T::Boolean if t.raw_a in [TrueClass, FalseClass]
    end
    t
  end
end
