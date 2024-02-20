# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'date'
require 'sorbet-runtime'
require 'base64'
require_relative './metadata_fields'

module SpeakeasyClientSDK
  module Utils
    extend T::Sig

    class FieldAugmented
      include MetadataFields
    end

    sig { params(val: Object, primitives: T::Boolean).returns(Object) }
    def self.val_to_string(val, primitives: true)
      if val.is_a? T::Enum
        val.serialize
      elsif val.is_a? DateTime
        val.strftime('%Y-%m-%dT%H:%M:%S.%NZ')
      elsif primitives
        val.to_s
      else
        val
      end
    end

    sig { params(headers_params: FieldAugmented).returns(T::Hash[Symbol, String]) }
    def self.get_headers(headers_params)
      return {} if headers_params.nil?

      headers = {}
      param_fields = headers_params.fields
      param_fields.each do |f|
        metadata = f.metadata[:header]
        next if metadata.nil?

        value = _serialize_header(metadata.fetch(:explode, false), headers_params.send(f.name))
        headers[metadata.fetch(:field_name, f.name)] = value if !value.empty?
      end
      headers
    end

    sig { params(explode: T::Boolean, obj: Object).returns(String) }
    def self._serialize_header(explode, obj)
      return '' if obj.nil?

      if obj.respond_to? :fields
        items = []
        obj_fields = obj.fields
        obj_fields.each do |obj_field|
          obj_param_metadata = obj_field.metadata[:header]
          next if obj_param_metadata.nil?

          obj_field_name = obj_param_metadata.fetch(:field_name, obj_field.name)
          next if obj_field_name == ''

          val = obj.send(obj_field.name)
          next if val.nil?

          if explode
            items.append("#{obj_field_name}=#{val_to_string(val)}")
          else
            items.append(obj_field_name)
            items.append(val_to_string(val))
          end
        end

        items.join(',') if !items.empty?
      elsif obj.is_a? Hash
        items = []
        obj.each do |key, value|
          next if value.nil?

          if explode
            items.append("#{key}=#{val_to_string(value)}")
          else
            items.append(key)
            items.append(val_to_string(value))
          end
        end

        items.join(',') if !items.empty?
      elsif obj.is_a? Array
        items = obj.filter { |v| !v.nil? }.map { |v| val_to_string(v) }.join(',')
      else
        val_to_string(obj)
      end
    end

    sig do
      params(field_name: String, explode: T::Boolean, obj: Object, delimiter: String,
             get_field_name_lambda: T.proc.params(obj_field: MetadataFields::Field).returns(String))
        .returns(T::Hash[Symbol, T::Array[String]])
    end
    def self._populate_form(field_name, explode, obj, delimiter, &get_field_name_lambda)
      params = {}

      return params if obj.nil?

      if obj.respond_to? :fields
        items = []
        obj_fields = obj.fields
        obj_fields.each do |obj_field|
          obj_field_name = get_field_name_lambda.call(obj_field)
          next if obj_field_name == ''

          val = obj.send(obj_field.name.to_sym)
          next if val.nil?

          if explode
            params[obj_field_name] = [val_to_string(val)]
          else
            items.append("#{obj_field_name}#{delimiter}#{val_to_string(val)}")
          end
        end

        params[field_name] = [items.join(delimiter)] if !items.empty?
      elsif obj.is_a? Hash
        items = []
        obj.each do |key, value|
          next if value.nil?

          if explode
            params[key] = val_to_string(value)
          else
            items.append("#{key}#{delimiter}#{val_to_string(value)}")
          end
        end
        params[field_name] = [items.join(delimiter)] if !items.empty?

      elsif obj.is_a? Array
        items = []
        obj.each do |value|
          next if value.nil?

          if explode
            params[field_name] = [] if !params.key? field_name

            params[field_name].append(val_to_string(value))
          else
            items.append(val_to_string(value))
          end
        end
        params[field_name] = items.map(&:to_s).join(delimiter) if !items.empty?

      else
        params[field_name] = val_to_string(obj)
      end
      params
    end

    sig do
      params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object)
        .returns(T::Hash[Symbol, T::Array[String]])
    end
    def self._get_deep_object_query_params(metadata, field_name, obj)
      params = {}

      return params if obj.nil?

      if obj.respond_to? :fields
        obj_fields = obj.fields
        obj_fields.each do |obj_field|
          obj_param_metadata = obj_field.metadata[:query_param]
          next if obj_param_metadata.nil?

          val = obj.send(obj_field.name)
          next if val.nil?

          key = "#{metadata.fetch(:field_name, field_name)}[#{obj_param_metadata.fetch(:field_name, obj_field.name)}]"
          if val.is_a? Array
            val.each do |v|
              next if v.nil?

              params[key] = [] if !params.include? key

              params[key] << val_to_string(v)
            end
          else
            params[key] = [val_to_string(val)]
          end
        end
      elsif obj.is_a? Hash
        obj.each do |key, value|
          next if value.nil?

          param_key = "#{metadata.fetch(:field_name, field_name)}[#{key}]"
          if value.is_a? Array
            value.each do |val|
              next if val.nil?

              params[param_key] = [] if !params.include? param_key

              params[param_key].append(val_to_string(val))
            end
          else
            params[param_key] = [val_to_string(value)]
          end
        end
      end
      params
    end

    sig do
      params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object)
        .returns(T::Hash[Symbol, T::Array[String]])
    end
    def self._get_serialized_params(metadata, field_name, obj)
      params = {}

      serialization = metadata.fetch(:serialization, '')
      params[metadata.fetch(:field_name, field_name)] = obj.marshal_json if serialization == 'json'

      params
    end

    sig do
      params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object, delimiter: String)
        .returns(T::Hash[Symbol, T::Array[String]])
    end
    def self._get_delimited_query_params(metadata, field_name, obj, delimiter)
      get_query_param_field_name = lambda do |obj_field|
        obj_param_metadata = obj_field.metadata[:query_param]

        return '' if obj_param_metadata.nil?

        return obj_param_metadata.fetch(:field_name, obj_field.name)
      end

      _populate_form(field_name, metadata.fetch(:explode, true), obj, delimiter, &get_query_param_field_name)
    end

    sig { params(clazz: Class, query_params: FieldAugmented, gbls: T.nilable(T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]])).returns(T::Hash[Symbol, T::Array[String]]) }
    def self.get_query_params(clazz, query_params, gbls = nil)
      params = {}
      param_fields = clazz.fields
      param_fields.each do |f|
        request_metadata = f.metadata[:request]
        next if !request_metadata.nil?

        metadata = f.metadata[:query_param]
        next if metadata.nil?

        param_name = f.name
        value = query_params&.send(param_name.to_sym)
        value = _populate_from_globals(param_name, value, 'queryParam', gbls)

        f_name = metadata[:field_name]
        serialization = metadata.fetch(:serialization, '')
        if serialization != ''
          params = params.merge _get_serialized_params(
            metadata, f_name, value
          )
        else
          style = metadata.fetch(:style, 'form')
          case style
          when 'deepObject'
            params = params.merge _get_deep_object_query_params(
              metadata, f_name, value
            )
          when 'form'
            params = params.merge _get_delimited_query_params(
              metadata, f_name, value, ','
            )
          when 'pipeDelimited'
            params = params.merge _get_delimited_query_params(
              metadata, f_name, value, '|'
            )
          else
            raise StandardError, 'not yet implemented'
          end
        end
      end
      params
    end

    sig { params(clazz: Class, server_url: String, path: String, path_params: FieldAugmented, gbls: T.nilable(T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]])).returns(String) }
    def self.generate_url(clazz, server_url, path, path_params, gbls = nil)
      clazz.fields.each do |f|
        param_metadata = f.metadata[:path_param]
        next if param_metadata.nil?

        if param_metadata.fetch(:style, 'simple') == 'simple'
          param = path_params.send(f.name) if !path_params.nil?
          param = _populate_from_globals(f.name, param, 'pathParam', gbls)
        end

        f_name = param_metadata.fetch(:field_name, f.name)
        serialization = param_metadata.fetch(:serialization, '')
        if serialization != ''
          serialized_params = _get_serialized_params(param_metadata, f_name, param)
          serialized_params.each do |k, v|
            path = path.sub("{#{k}}", v)
          end
        else
          if param.is_a? Array
            pp_vals = []
            param.each do |pp_val|
              pp_vals.append(pp_val.to_s)
            end
            path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", pp_vals.join(','))
          elsif param.is_a? Hash
            pp_vals = []
            param.each do |pp_key, pp_val|
              value = val_to_string(pp_val)

              if param_metadata.fetch(:explode, false)
                pp_vals.append("#{pp_key}=#{value}")
              else
                pp_vals.append("#{pp_key},#{value}")
              end
            end
            path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", pp_vals.join(','))
          elsif !(param.is_a?(String) || param.is_a?(Integer) ||
            param.is_a?(Float) || param.is_a?(Complex) || param.is_a?(TrueClass) ||
            param.is_a?(FalseClass))
            pp_vals = []
            attrs = param.fields.filter { |field| field.name && param.respond_to?(field.name.to_sym) }.map(&:name)
            attrs.each do |attr|
              field = param.field(attr)

              param_value_metadata = field.metadata[:path_param]

              next if param_value_metadata.nil?

              parm_name = param_value_metadata.fetch(:field_name, f.name)

              param_field_val = param.send(attr)

              if param_field_val.is_a? T::Enum
                param_field_val = param_field_val.serialize
              elsif param_field_val.is_a? DateTime
                param_field_val = param_field_val.strftime('%Y-%m-%dT%H:%M:%S.%NZ')
              end
              if !field.nil? && T::Utils::Nilable.is_union_with_nilclass(field.type) && param_field_val.nil?
                next
              elsif param_metadata.fetch(:explode, false)
                pp_vals.append("#{parm_name}=#{param_field_val}")
              else
                pp_vals.append("#{parm_name},#{param_field_val}")
              end
            end
            path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", pp_vals.join(','))
          else
            path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", param.to_s)
          end
        end
      end

      server_url.delete_suffix('/') + path
    end

    sig { params(content_type: String, pattern: String).returns(T::Boolean) }
    def self.match_content_type(content_type, pattern)
      return true if content_type == pattern || pattern == '*' || pattern == '*/*'

      pieces = content_type.split(';')
      pieces.each do |piece|
        return true if pattern == piece.strip
      end

      false
    end

    sig { params(req: Faraday::Request, security: Object).void }
    def self.configure_request_security(req, security)
      sec_fields = security.fields
      sec_fields.each do |sec_field|
        value = security.send(sec_field.name)
        next if value.nil?

        metadata = sec_field.metadata[:security]
        next if metadata.nil?

        _parse_security_option(req, value) if metadata[:option]

        if metadata[:scheme]
          # Special case for basic auth which could be a flattened struct
          if metadata[:sub_type] == 'basic' && !value.respond_to?(:fields)
            _parse_security_scheme(req, metadata, security)
          else
            _parse_security_scheme(req, metadata, value)
          end
        end
      end
    end

    sig { params(req: Faraday::Request, option: Object).void }
    def self._parse_security_option(req, option)
      opt_fields = option.fields
      opt_fields.each do |opt_field|
        metadata = opt_field.metadata[:security]
        next if metadata.nil? || !metadata.include?(:scheme)

        _parse_security_scheme(req, metadata, option.send(opt_field.name))
      end
    end

    sig { params(req: Faraday::Request, scheme_metadata: T::Hash[Symbol, String], scheme: Object).void }
    def self._parse_security_scheme(req, scheme_metadata, scheme)
      scheme_type = scheme_metadata[:type]
      sub_type = scheme_metadata[:sub_type]

      if scheme.respond_to? :fields
        if scheme_type == 'http' && sub_type == 'basic'
          _parse_basic_auth_scheme(req, scheme)
          return
        end

        scheme_fields = scheme.fields
        scheme_fields.each do |field|
          metadata = field.metadata[:security]
          next if metadata.nil? || metadata[:field_name].nil?

          value = scheme.send(field.name)
          _parse_security_scheme_value(req, scheme_metadata, metadata, value)
        end
      else
        _parse_security_scheme_value(req, scheme_metadata, scheme_metadata, scheme)
      end
    end

    sig do
      params(req: Faraday::Request, scheme_metadata: T::Hash[Symbol, String],
             security_metadata: T::Hash[Symbol, String], value: Object).void
    end
    def self._parse_security_scheme_value(req, scheme_metadata, security_metadata, value)
      scheme_type = scheme_metadata[:type]
      sub_type = scheme_metadata[:sub_type]

      header_name = security_metadata[:field_name]

      case scheme_type
      when 'apiKey'
        case sub_type
        when 'header'
          req.headers[header_name] = value
        when 'query'
          req.params[header_name] = value
        when 'cookie'
          req.cookies[header_name] = value
        else
          raise StandardError, 'not supported'
        end
      when 'openIdConnect'
        req.headers[header_name] = value.downcase.start_with?('bearer ') ? value : "Bearer #{value}"
      when 'oauth2'
        req.headers[header_name] = value.downcase.start_with?('bearer ') ? value : "Bearer #{value}"
      when 'http'
        if sub_type == 'bearer'
          req.headers[header_name] = value.downcase.start_with?('bearer ') ? value : "Bearer #{value}"
        else
          raise StandardError, 'not supported'
        end
      else
        raise StandardError, 'not supported'
      end
    end

    sig { params(req: Faraday::Request, scheme: FieldAugmented).void }
    def self._parse_basic_auth_scheme(req, scheme)
      username, password = ''

      scheme_fields = scheme.fields
      scheme_fields.each do |scheme_field|
        metadata = scheme_field.metadata[:security]
        next if metadata.nil? || !metadata.include?(:field_name)

        field_name = metadata[:field_name]
        value = scheme.send(scheme_field.name)

        username = value if field_name == 'username'
        password = value if field_name == 'password'
      end

      data = "#{username}:#{password}".encode
      # Use strict_encode, because encode adds newlines after 60 chars
      # https://docs.ruby-lang.org/en/3.0/Base64.html#method-i-encode64
      req.headers['Authorization'] = "Basic #{Base64.strict_encode64(data)}"
    end

    sig { params(optional: T::Boolean).returns(T.proc.params(s: String).returns(DateTime)) }
    def self.datetime_from_iso_format(optional)
      lambda do |s|
        return nil if optional && s.nil?

        return DateTime.strptime(s, '%Y-%m-%dT%H:%M:%S.%NZ')
      end
    end

    sig { params(optional: T::Boolean).returns(T.proc.params(s: String).returns(Date)) }
    def self.date_from_iso_format(optional)
      lambda do |s|
        return nil if optional && s.nil?

        return Date.iso8601(s)
      end
    end

    sig do
      params(enum_type: T.class_of(T::Enum), optional: T::Boolean)
        .returns(T.proc.params(s: String).returns(T::Enum))
    end
    def self.enum_from_string(enum_type, optional)
      lambda do |s|
        return nil if optional && s.nil?

        return enum_type.deserialize(s)
      end
    end

    sig { params(name: String).returns(T.proc.returns(String)) }
    def self.field_name(name)
      proc { |_, field_name = name| field_name }
    end

    SERIALIZATION_METHOD_TO_CONTENT_TYPE = {
      'json': 'application/json',
      'form': 'application/x-www-form-urlencoded',
      'multipart': 'multipart/form-data',
      'raw': 'application/octet-stream',
      'string': 'text/plain'
    }.freeze

    sig do
      params(request: Object, request_field_name: Symbol, serialization_method: Symbol)
        .returns([String, Object, Object])
    end
    def self.serialize_request_body(request, request_field_name, serialization_method)
      return ['', nil, nil] if request.nil?

      return serialize_content_type(request_field_name, SERIALIZATION_METHOD_TO_CONTENT_TYPE[serialization_method], request) if !request.respond_to?(:fields) || !request.respond_to?(request_field_name)

      request_val = request.send(request_field_name)

      request_fields = request.fields
      request_metadata = nil
      request_fields.each do |f|
        if f.name == request_field_name
          request_metadata = f.metadata[:request]
          break
        end
      end
      raise StandardError, 'invalid request type' if request_metadata.nil?

      serialize_content_type(
        :request, request_metadata.fetch(:media_type, 'application/octet-stream'), request_val
      )
    end

    sig do
      params(field_name: Symbol, media_type: String, request: Object)
        .returns([String, Object, T.nilable(T::Array[T::Array[Object]])])
    end
    def self.serialize_content_type(field_name, media_type, request)
      return media_type, marshal_json_complex(request), nil if media_type.match('(application|text)\/.*?\+*json.*')
      return serialize_multipart_form(media_type, request) if media_type.match('multipart\/.*')
      return media_type, serialize_form_data(field_name, request), nil if media_type.match('application\/x-www-form-urlencoded.*')
      return media_type, request, nil if request.is_a?(String) || request.is_a?(Array)

      raise StandardError, "invalid request body type #{type(request)} for mediaType {metadata['media_type']}"
    end

    sig { params(field: MetadataFields::Field, data_class: FieldAugmented).returns(Object) }
    def self.parse_field(field, data_class)
      field_metadata = field.metadata[:metadata_string]
      return nil if field_metadata.nil?

      field_value = data_class.send(field.name)
      return nil if field_value.nil?

      field_value
    end

    sig { params(media_type: String, request: FieldAugmented).returns([String, Object, T::Array[T::Array[Object]]]) }
    def self.serialize_multipart_form(media_type, request)
      form = []
      request_fields = request.fields
      request_fields.each do |field|
        val = request.send(field.name)
        next if val.nil?

        field_metadata = field.metadata[:multipart_form]
        next if field_metadata.nil?

        if field_metadata[:file] == true
          file_fields = val.fields

          file_name = ''
          field_name = ''
          content = nil

          file_fields.each do |file_field|
            file_metadata = file_field.metadata[:multipart_form]
            next if file_metadata.nil?

            if file_metadata[:content] == true
              content = val.send(file_field.name)
            else
              field_name = file_metadata.fetch(:field_name, file_field.name)
              file_name = val.send(file_field.name)
            end
          end
          raise StandardError, 'invalid multipart/form-data file' if field_name == '' || file_name == '' || content == nil?

          form.append([field_name, [file_name, content]])
        elsif field_metadata[:json] == true
          to_append = [
            field_metadata.fetch(:field_name, field.name), [
              nil, marshal_json_complex(val), 'application/json'
            ]
          ]
          form.append(to_append)
        else
          field_name = field_metadata.fetch(
            :field_name, field.name
          )
          if val.is_a? Array
            val.each do |value|
              next if value.nil?

              form.append(
                ["#{field_name}[]", [nil, val_to_string(value)]]
              )
            end
          else
            form.append([field_name, [nil, val_to_string(val)]])
          end
        end
      end
      [media_type, nil, form]
    end

    sig do
      params(form: T::Array[T::Array[T.any(String, T::Array[T.nilable(String)])]])
        .returns(T::Hash[Symbol, Object])
    end
    def self.encode_form(form)
      payload = {}
      form.each do |field_name, field|
        if field.length == 2
          if field[0].nil?
            payload[field_name] = field[1]
          else
            payload[field_name] = Faraday::Multipart::FilePart.new(field[0], '', field[1])
          end
        elsif field.length == 3
          payload[field_name] = Faraday::Multipart::ParamPart.new(field[1].to_json, field[2])
        end
      end
      payload
    end

    sig do
      params(field_name: Symbol, data: T.any(FieldAugmented, T::Hash[Symbol, String]))
        .returns(T::Hash[Symbol, Object])
    end
    def self.serialize_form_data(field_name, data)
      get_form_field_name = lambda do |obj_field|
        obj_param_metadata = obj_field.metadata[:form]

        return '' if obj_param_metadata.nil?

        return obj_param_metadata.fetch(:field_name, obj_field.name)
      end

      form = {}
      if data.respond_to? :fields
        data.fields.each do |field|
          val = data.send(field.name)
          next if val.nil?

          metadata = field.metadata[:form]

          next if metadata.nil?

          field_name = metadata.fetch(:field_name, field.name)

          if metadata[:json]
            form[field_name] = marshal_json_complex(val)
          else
            if metadata.fetch(:style, 'form') == 'form'
              form = form.merge(
                _populate_form(
                  field_name, metadata.fetch(:explode, true), val, ',', &get_form_field_name
                )
              )
            else
              raise StandardError, "Invalid form style for field #{field.name}"
            end
          end
        end
      elsif data.is_a? Hash
        data.each do |key, value|
          form[key] = [val_to_string(value)]
        end
      else
        raise StandardError, "Invalid request body type for field #{field_name}"
      end

      form
    end

    sig { params(url_with_params: String, params: T::Hash[Symbol, String]).returns(String) }
    def self.template_url(url_with_params, params)
      params.each do |key, value|
        if value.respond_to? :serialize
          val_str = value.serialize
        else
          val_str = value
        end
        url_with_params = url_with_params.gsub("{#{key}}", val_str)
      end

      url_with_params
    end

    sig { params(param_name: Symbol, value: Object, param_type: String, gbls: T.nilable(T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]])).returns(Object) }
    def self._populate_from_globals(param_name, value, param_type, gbls)
      if value.nil? && !gbls.nil?
        global_value = gbls.dig(:parameters, param_type.to_sym, param_name.to_sym)
        value = global_value if !global_value.nil?
      end
      value
    end

    sig { params(complex: Object).returns(Object) }
    def self.marshal_json_complex(complex)
      if complex.is_a? Array
        complex.map { |v| Utils.marshal_json_complex(v) }.to_json
      elsif complex.is_a? Hash
        complex.transform_values { |v| Utils.marshal_json_complex(v) }.to_json
      elsif complex.respond_to? :marshal_json
        complex.marshal_json
      else
        complex.to_json
      end
    end

    sig { params(data: Object, type: Object).returns(Object) }
    def self.unmarshal_complex(data, type)
      begin
        value = unmarshal_json(JSON.parse(data), type)
      rescue TypeError, JSON::ParserError
        value = unmarshal_json(data, type)
      end
      value
    end

    sig { params(data: Object, type: Object).returns(Object) }
    def self.unmarshal_json(data, type)
      if T.simplifiable? type
        type = T.simplify_type type
      end
      if type.respond_to? :unmarshal_json
        type.unmarshal_json(data)
      elsif T.arr? type
        data.map { |v| Utils.unmarshal_complex(v, T.arr_of(type)) }
      elsif T.hash? type
        data.transform_values { |v| Utils.unmarshal_complex(v, T.hash_of(type)) }
      else
        data
      end
    end
  end
end
