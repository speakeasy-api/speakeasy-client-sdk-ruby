require 'date'
require 'sorbet-runtime'
require 'base64'
require_relative './metadata_fields'

module OpenApiSDK
    module Utils
      extend T::Sig

      class FieldAugmented
        include MetadataFields
      end

      sig { params(val: Object, primitives: T::Boolean).returns(Object) }
      def self.val_to_string(val, primitives=true)
        if val.is_a? T::Enum
          val = val.serialize
        elsif val.is_a? DateTime
          val = val.strftime("%Y-%m-%dT%H:%M:%S.%NZ")
        else
          if primitives
            val = val.to_s
          else
            val = val
          end
        end
        val
      end

        sig { params(headers_params: FieldAugmented).returns(T::Hash[Symbol, String]) }
        def self.get_headers(headers_params)
          if headers_params.nil?
            return {}
          end
          headers = {}
          param_fields = headers_params.fields
          for f in param_fields
            metadata = f.metadata[:header]
            if metadata.nil?
              next
            end
            value = _serialize_header(metadata.fetch(:explode, false), headers_params.send(f.name))
            if !value.empty?
              headers[metadata.fetch(:field_name, f.name)] = value
            end
          end
          return headers
        end

        sig { params(explode: T::Boolean, obj: Object).returns(String)}
        def self._serialize_header(explode, obj)
          if obj.nil?
            return ''
          end
          if obj.respond_to? :fields
            items = []
            obj_fields = obj.fields
            for obj_field in obj_fields
              obj_param_metadata = obj_field.metadata[:header]
              if obj_param_metadata.nil?
                next
              end
              obj_field_name = obj_param_metadata.fetch(:field_name, obj_field.name)
              if obj_field_name == ""
                next
              end
              val = obj.send(obj_field.name)
              if val.nil?
                next
              end

              if explode
                items.append("#{obj_field_name}=#{val_to_string(val)}")
              else
                items.append(obj_field_name)
                items.append(val_to_string(val))
              end
            end
            if !items.empty?
              return items.join(',')
            end
          elsif obj.is_a? Hash
            items = []
            obj.each do |key, value|
              if value.nil?
                next
              end
              if explode
                items.append("#{key}=#{val_to_string(value)}")
              else
                items.append(key)
                items.append(val_to_string(value))
              end
            end
            if !items.empty?
              return items.join(',')
            end
          elsif obj.is_a? Array
            items = obj.filter{|v| !v.nil? }.map{|v| val_to_string(v)}
            return items.join(',')
          else
            return val_to_string(obj)
          end
        end


        sig { params(field_name: String, explode: T::Boolean, obj: Object, get_field_name_lambda: T.proc.params(obj_field: MetadataFields::Field).returns(String)).returns(T::Hash[Symbol, T::Array[String]]) }
        def self._populate_form(field_name, explode, obj, &get_field_name_lambda)
            params = {}

            if obj.nil?
                return params
            end

            if obj.respond_to? :fields
                items = []
                obj_fields = obj.fields
                for obj_field in obj_fields
                    obj_field_name = get_field_name_lambda.call(obj_field)
                    if obj_field_name == ""
                        next
                    end
                    val = obj.send(obj_field.name.to_sym)
                    if val.nil?
                        next
                    end
                    if explode
                        params[obj_field_name] = [val_to_string(val)]
                    else
                        items.append("#{obj_field_name},#{val_to_string(val)}")
                    end
                end
                if !items.empty?
                    params[field_name] = [items.join(',')]
                end
            elsif obj.is_a? Hash
                items = []
                obj.each do |key, value|
                    if value.nil?
                        next
                    end

                    if explode
                        params[key] = val_to_string(value)
                    else
                        items.append("#{key},#{val_to_string(value)}")
                    end
                end
                if !items.empty?
                    params[field_name] = [items.join(',')]
                end
            elsif obj.is_a? Array
                items = []
                for value in obj
                    if value.nil?
                        next
                    end
                    if explode
                        if !params.key? field_name
                            params[field_name] = []
                        end
                        params[field_name].append(val_to_string(value))
                    else
                        items.append(val_to_string(value))
                    end
                end
                if ! items.empty?
                    params[field_name] = items.map { |i| i.to_s }.join(',')
                end
            else
                params[field_name] = val_to_string(obj)
            end
            params
        end

        sig { params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object).returns(T::Hash[Symbol, T::Array[String]])}
        def self._get_deep_object_query_params(metadata, field_name, obj)
            params = {}

            if obj.nil?
                return params
            end

            if obj.respond_to? :fields
                obj_fields = obj.fields
                for obj_field in obj_fields
                    obj_param_metadata = obj_field.metadata[:query_param]
                    if obj_param_metadata.nil?
                        next
                    end

                    val = obj.send(obj_field.name)
                    if val.nil?
                        next
                    end

                key = "#{metadata.fetch(:field_name, field_name)}[#{obj_param_metadata.fetch(:field_name, obj_field.name)}]"
                    if val.is_a? Array
                        for v in val
                            if v.nil?
                                next
                            end
                            
                            if !params.include? key
                                params[key] = []
                            end

                            params[key] << val_to_string(v)
                        end
                    else
                        params[key] = [val_to_string(val)]
                    end
                end
            elsif obj.is_a? Hash

                obj.each do |key, value|
                    if value.nil?
                        next
                    end

                    param_key = "#{metadata.fetch(:field_name, field_name)}[#{key}]"
                    if value.is_a? Array
                        for val in value
                            if val.nil?
                                next
                            end

                            
                            if !params.include? param_key
                                params[param_key] = []
                            end
                            params[param_key].append(val_to_string(val))
                        end
                    else
                        params[param_key] = [val_to_string(value)]
                    end
                end
            end
            return params
        end

        sig { params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object).returns(T::Hash[Symbol, T::Array[String]])}
        def self._get_serialized_query_params(metadata, field_name, obj)
            params = {}

            serialization = metadata.fetch(:serialization, '')
            if serialization == 'json'
                params[metadata.fetch(:field_name, field_name)] = obj.marshal_json
            end

            params
        end

        sig { params(metadata: T::Hash[Symbol, String], field_name: String, obj: Object).returns(T::Hash[Symbol, T::Array[String]])}
        def self._get_form_query_params(metadata, field_name, obj)
            get_query_param_field_name = lambda do |obj_field|
                obj_param_metadata = obj_field.metadata[:query_param]
    
                if obj_param_metadata.nil?
                    return ""
                end
    
                return obj_param_metadata.fetch(:field_name, obj_field.name)
            end
    
            _populate_form(field_name, metadata.fetch(:explode, true), obj, &get_query_param_field_name)
        end

        sig { params(query_params: FieldAugmented).returns(T::Hash[Symbol, T::Array[String]])}
        def self.get_query_params(query_params)
            if query_params.nil?
                return {}
            end

            params ={}
            param_fields = query_params.fields
            for f in param_fields
                metadata = f.metadata[:query_param]
                if metadata.nil?
                    next
                end
                param_name = f.name
                f_name = metadata[:field_name]
                serialization = metadata.fetch(:serialization, '')
                if serialization != ''
                    params = params.merge _get_serialized_query_params(
                        metadata, f_name, query_params.send(param_name.to_sym))
                else
                    style = metadata.fetch(:style, 'form')
                    if style == 'deepObject'
                        params = params.merge _get_deep_object_query_params(
                            metadata, f_name, query_params.send(param_name.to_sym))
                    elsif style == 'form'
                        params = params.merge _get_form_query_params(
                            metadata, f_name, query_params.send(param_name.to_sym))
                    else
                        raise StandardError.new ('not yet implemented')
                    end
                end
            end
            return params
        end

        sig { params(server_url: String, path: String, path_params: FieldAugmented).returns(String) }
        def self.generate_url(server_url, path, path_params)

            for f in path_params.fields
                param_metadata = f.metadata[:path_param]
                if param_metadata.nil?
                    next
                end
                if param_metadata.fetch(:style, 'simple') == 'simple'
                    param = path_params.send(f.name)
                    if param.is_a? Array
                        pp_vals = []
                        for pp_val in param
                            pp_vals.append(pp_val.to_s)
                        end
                        path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", pp_vals.join(","))
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
                        path = path.sub(
                            '{' + param_metadata.fetch(:field_name, f.name) + '}', pp_vals.join(","))
                    elsif not (param.is_a?(String) || param.is_a?(Integer) || param.is_a?(Float) || param.is_a?(Complex) || param.is_a?(TrueClass) || param.is_a?(FalseClass))
                        pp_vals = []
                        attrs = param.fields.filter{|f| f.name && param.respond_to?(f.name.to_sym)}.map{|f| f.name}
                        for attr in attrs
                            field = param.field(attr)

                            param_value_metadata = field.metadata[:path_param]
                            if param_value_metadata.nil?
                                next
                            end

                            parm_name = param_value_metadata.fetch(:field_name, f.name)

                            param_field_val = param.send(attr)
                            if param_field_val.is_a? T::Enum
                                param_field_val = param_field_val.serialize
                            elsif param_field_val.is_a? DateTime
                                param_field_val = param_field_val.strftime("%Y-%m-%dT%H:%M:%S.%NZ")
                            else
                                param_field_val = param_field_val
                            end
                            if !field.nil? && T::Utils::Nilable.is_union_with_nilclass(field.type) && param_field_val.nil?
                                next
                            elsif param_metadata.fetch(:explode, false)
                                pp_vals.append("#{parm_name}=#{param_field_val}")
                            else
                                pp_vals.append("#{parm_name},#{param_field_val}")
                            end
                        end
                        path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", pp_vals.join(","))
                    else
                        path = path.sub("{#{param_metadata.fetch(:field_name, f.name)}}", param.to_s)
                    end
                end
            end

            return server_url.delete_suffix("/") + path
        end

        sig { params(content_type: String, pattern: String).returns(T::Boolean)}
        def self.match_content_type(content_type, pattern)
            if content_type == pattern || pattern == "*" || pattern == "*/*"
                return true
            end
            pieces = content_type.split(";")
            for piece in pieces
                if pattern == piece.strip
                    return true
                end 
            end

            return false
        end

        sig { params(req: Faraday::Request, security: Object).void }
        def self.configure_request_security(req, security)

          sec_fields = security.fields
          for sec_field in sec_fields
            value = security.send(sec_field.name)
            if value.nil?
              next
            end
            metadata = sec_field.metadata[:security]
            if metadata.nil?
              next
            end
            if metadata[:option]
              _parse_security_option(req, value)
            end
            if metadata[:scheme]
              # Special case for basic auth which could be a flattened struct
              if metadata[:sub_type] == "basic" && ! value.respond_to?(:fields)
                _parse_security_scheme(req, metadata, security)
              else
                _parse_security_scheme(req, metadata, value)
              end
            end
          end
        end



        sig{ params(req: Faraday::Request, option: Object).void}
        def self._parse_security_option(req, option)

            opt_fields = option.fields
            for opt_field in opt_fields
                metadata = opt_field.metadata[:security]
                if metadata.nil? || !metadata.include?(:scheme)
                    next
                end
                self._parse_security_scheme(req, metadata, option.send(opt_field.name))
            end
        end


        sig{ params(req: Faraday::Request, scheme_metadata: T::Hash[Symbol, String], scheme: Object).void }
        def self._parse_security_scheme(req, scheme_metadata, scheme)
            scheme_type = scheme_metadata[:type]
            sub_type = scheme_metadata[:sub_type]


            if scheme.respond_to? :fields
                if scheme_type == 'http' && sub_type == 'basic'
                    self._parse_basic_auth_scheme(req, scheme)
                    return
                end

                scheme_fields = scheme.fields
                for field in scheme_fields
                    metadata = field.metadata[:security]
                    if metadata.nil? || metadata[:field_name].nil?
                        next
                    end
                    value = scheme.send(scheme_field.name)
                    _parse_security_scheme_value(req, scheme_metadata, metadata, value)
                end
            else
                _parse_security_scheme_value(req, scheme_metadata, scheme_metadata, scheme)
            end
        end

        sig{ params(req: Faraday::Request, scheme_metadata: T::Hash[Symbol, String], security_metadata: T::Hash[Symbol, String], value: Object).void }
        def self._parse_security_scheme_value(req, scheme_metadata, security_metadata, value)
            scheme_type = scheme_metadata[:type]
            sub_type = scheme_metadata[:sub_type]

            header_name = security_metadata[:field_name]

            if scheme_type == "apiKey"
                if sub_type == 'header'
                    req.headers[header_name] = value
                elsif sub_type == 'query'
                    req.params[header_name] = value
                elsif sub_type == 'cookie'
                    req.cookies[header_name] = value
                else
                    raise StandardError.new ('not supported')
                end
            elsif scheme_type == "openIdConnect"
                req.headers[header_name] = value
            elsif scheme_type == 'oauth2'
                req.headers[header_name] = value
            elsif scheme_type == 'http'
                if sub_type == 'bearer'
                    req.headers[header_name] = value
                else
                    raise StandardError.new ('not supported')
                end
            else
                raise StandardError.new ('not supported')
            end
        end

        sig { params(req: Faraday::Request, scheme: FieldAugmented).void }
        def self._parse_basic_auth_scheme(req, scheme)
            username, password = ""

            scheme_fields = scheme.fields
            for scheme_field in scheme_fields
                metadata = scheme_field.metadata[:security]
                if metadata.nil? or !metadata.include? :field_name
                    next
                end

                field_name = metadata[:field_name]
                value = scheme.send(scheme_field.name)

                if field_name == 'username'
                    username = value
                end
                if field_name == 'password'
                    password = value
                end
            end

            data = "#{username}:#{password}".encode()
            req.headers['Authorization'] = "Basic #{Base64.encode64(data)}"
        end

        sig { params(optional: T::Boolean).returns(T.proc.params(s: String).returns(DateTime)) }
        def self.datetime_from_iso_format(optional)
            return lambda do |s| 
                if optional and s.nil?
                    return nil
                end
                return DateTime.strptime(s, "%Y-%m-%dT%H:%M:%S.%NZ")
            end
        end

        sig { params(optional: T::Boolean).returns(T.proc.params(s: String).returns(Date)) }
        def self.date_from_iso_format(optional)
            return lambda do |s| 
                if optional and s.nil?
                    return nil
                end
                return Date.iso8601(s)
            end
            
        end

        sig { params(enum_type: T.class_of(T::Enum), optional: T::Boolean).returns(T.proc.params(s: String).returns(T::Enum)) }
        def self.enum_from_string(enum_type, optional)
            return lambda do |s|
                if optional and s.nil?
                    return nil
                end
                return enum_type.deserialize(s)
            end 
        end

        sig { params(name: String).returns(T.proc.returns(String)) }
        def self.field_name(name)
            return Proc.new { |x, field_name=name| field_name }
        end

        sig { params(orig: T::Hash[String, Object], dataclass_type: String).returns(FieldAugmented)}
        def self.dict_to_dataclass(orig, dataclass_type)
            cast_type = dataclass_type.to_s.sub("typing.Optional[", "").replace("]", "")
            cast_modules = cast_type.split(".")[0..-1]
            if cast_modules[0] == "typing"
                # This is a built-in type, not a data_class
                return orig
            end
            cast_type = cast_type.split(".")[-1..][0]
            cast_class = mod.send(cast_type)
            data_class = from_dict(cast_class, orig)
            data_fields = data_class.fields

            for f in data_fields
                name = f.name
                f.metadata.each do |meta_key, meta_value|
                    if meta_value.include? 'field_name'
                        name = meta_value["field_name"]
                        break
                    else
                        next
                    end
                end
                if orig.include? f.name
                    original_value = orig[f.name]
                else
                    original_value = orig[name]
                end
                data_class.send(f.name, original_value)
            end
            return data_class
        end

        sig { params(request: FieldAugmented).returns([String, Object, Object])}
        def self.serialize_request_body(request)
            if request.nil?
                return ['', nil, nil]
            end
            request_val = request.send(:request)
            if request_val.nil?
                raise StandardError.new ("request body not found")
            end
            request_fields = request.fields
            request_metadata = nil
            for f in request_fields
                if f.name == :request
                    request_metadata = f.metadata[:request]
                    break
                end
            end
            if !request_metadata.nil?
                # single request
                return serialize_content_type(:request, request_metadata.fetch(:media_type, 'application/octet-stream'), request_val)
            end
            request_fields = request_val.fields
            for f in request_fields
                req = request_val.send(f.name)
                if req.nil?
                    next
                end
                request_metadata = f.metadata[:request]
                if request_metadata.nil?
                    raise StandardError.new("missing request tag on request body field #{f.name}")
                end
                return serialize_content_type(f.name, request_metadata.fetch(:media_type, 'application/octet-stream'), req)
            end
        end
        
        sig { params(field_name: Symbol, media_type: String, request: Object).returns([String, Object, T.nilable(T::Array[T::Array[Object]])]) }
        def self.serialize_content_type(field_name, media_type, request)
            
            if media_type.match('(application|text)\/.*?\+*json.*')
                return media_type, request.marshal_json, nil
            end
            if media_type.match('multipart\/.*')
                return serialize_multipart_form(media_type, request)
            end
            if media_type.match('application\/x-www-form-urlencoded.*')
                return media_type, serialize_form_data(field_name, request), nil
            end
            if request.is_a?(String) || request.is_a?(Array)
                return media_type, request, nil
            end
            raise StandardError.new(
                f"invalid request body type {type(request)} for mediaType {metadata['media_type']}")
        end

        sig { params(field: MetadataFields::Field, data_class: FieldAugmented, metadata_string: String).returns(Object)}
        def self.parse_field(field, data_class, metadata_string)
            field_metadata = field.metadata[:metadata_string]
            if field_metadata.nil?
                return nil
            end
            field_value = data_class.send(field.name)
            if field_value.nil?
                return nil
            end
            begin
                return dict_to_dataclass(field_value, field.type)
            rescue
                return field_value
            end
        end

        sig { params(complex: Object).returns(Object) }
        def self.marshal_json_complex(complex)
            if complex.is_a? Array
                complex.map{|v| v.marshal_json}
            elsif complex.is_a? Hash
                complex.map{|k, v| [k, v.marshal_json]}.to_h.to_json
            else
                complex.marshal_json
            end
        end

        sig { params(media_type: String, request: FieldAugmented).returns([String, Object, T::Array[T::Array[Object]]]) }
        def self.serialize_multipart_form(media_type, request)
            form= []
            request_fields = request.fields
            for field in request_fields
                val = request.send(field.name)
                if val.nil?
                    next
                end

                field_metadata = field.metadata[:multipart_form]
                if field_metadata.nil?
                    next
                end

                if field_metadata[:file] == true
                    file_fields = val.fields

                    file_name = ""
                    field_name = ""
                    content = nil
                    
                    for file_field in file_fields
                        file_metadata = file_field.metadata[:multipart_form]
                        if file_metadata.nil?
                            next
                        end

                        if file_metadata[:content] == true
                            content = val.send(file_field.name)
                        else
                            field_name = file_metadata.fetch(:field_name, file_field.name)
                            file_name = val.send(file_field.name)
                        end
                    end
                    if field_name == "" or file_name == "" or content == nil?
                        raise StandardError.new('invalid multipart/form-data file')
                    end

                    form.append([field_name, [file_name, content]])
                elsif field_metadata[:json] == true
                    to_append = [field_metadata.fetch(:field_name, field.name), [
                        nil, marshal_json_complex(val), "application/json"]]
                    form.append(to_append)
                else
                    field_name = field_metadata.fetch(
                        :field_name, field.name)
                    if val.is_a? Array
                        for value in val
                            if value.nil?
                                next
                            end
                            form.append(
                                [field_name + "[]", [nil, val_to_string(value)]])
                        end
                    else
                        form.append([field_name, [nil, val_to_string(val)]])
                    end
                end
            end
            return media_type, nil, form
        end

        sig{ params(form: T::Array[T::Array[T.any(String, T::Array[T.nilable(String)])]]).returns(T::Hash[Symbol, Object])}
        def self.encode_form(form)
            payload = {}
            for field_name, field in form
                if field.length == 2
                    if field[0].nil?
                        payload[field_name] = field[1]
                    else
                        payload[field_name] = Faraday::Multipart::FilePart.new(field[1], '', field[0])
                    end
                elsif field.length == 3
                    payload[field_name] = Faraday::Multipart::ParamPart.new(field[1].to_json, field[2])
                end
            end
            payload
        end
        
        sig { params(field_name: Symbol, data: T.any(FieldAugmented, T::Hash[Symbol, String])).returns(T::Hash[Symbol, Object]) }
        def self.serialize_form_data(field_name, data)
            get_form_field_name = lambda do |obj_field|
                obj_param_metadata = obj_field.metadata[:form]

                if obj_param_metadata.nil?
                    return ""
                end

                return obj_param_metadata.fetch(:field_name, obj_field.name)
            end
            

            form = {}
            if data.respond_to? :fields
                for field in data.fields
                    val = data.send(field.name)
                    if val.nil?
                        next
                    end

                    metadata = field.metadata[:form]
                    if metadata.nil?
                        next
                    end

                    field_name = metadata.fetch(:field_name, field.name)

                    if metadata[:json]
                        form[field_name] = marshal_json_complex(val)
                    else
                        if metadata.fetch(:style, 'form') == 'form'
                            form = form.merge(_populate_form(
                                field_name, metadata.fetch(:explode, true), val, &get_form_field_name))
                        else
                            raise StandardError.new(
                                "Invalid form style for field #{field.name}")
                        end
                    end
                end
            elsif data.is_a? Hash
                data.each do |key, value|
                    form[key] = [val_to_string(value)]
                end
            else
                raise StandardError.new("Invalid request body type for field #{field_name}")
            end

            return form
        end

        sig { params(string_with_params: String, params: T::Hash[Symbol, String]).returns(String) }
        def self.replace_parameters(string_with_params, params)
            params.each do |key, value| 
                string_with_params = string_with_params.gsub("{#{key}}", value)
            end

            string_with_params
        end

    end
end
