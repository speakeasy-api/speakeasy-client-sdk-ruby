module OpenApiSDK

  module MetadataFields
    extend T::Sig

    class Field
      attr_accessor :name, :type, :metadata
      def initialize(name, type, metadata) 
        @name = name
        @type = type
        @metadata = metadata
      end
    end

    module ClassMethods
      extend T::Sig

      def fields
        if @__fields__.nil?
          @__fields__ = []
        end
        @__fields__
      end

      def field(field_name, type, metadata={})
        attr_accessor field_name
        fields << Field.new(field_name, type, metadata)
      end

      def unmarshal_single(field_type, value, decoder=nil)
        if field_type.respond_to? :unmarshal_json
          unmarshalled = field_type.unmarshal_json(value)
          return unmarshalled
        elsif field_type.to_s == "Object"
          begin
            value = JSON.load(value)
          rescue
          end
          return value
        end
        if decoder.nil?
          return value
        else
          return decoder.call(value)
        end

      end

      sig{ params(json_obj: T.any(String, T::Hash[Symbol, String])).returns(Utils::FieldAugmented) }
      def unmarshal_json(json_obj)
        to_build = new
        begin
          d = JSON.load(json_obj)
        rescue
          d = json_obj
        end
        for field in self.fields
          field_type = field.type
          ## nilable
          if field.type.respond_to? :types
            if field.type.types[0].respond_to? :raw_type
              field_type = field.type.types[0].raw_type
            end
          end
          key = "#{field.name}="
          lookup = field.metadata.fetch(:format_json, {}).fetch(:letter_case, nil).call()
          value = d[lookup]

          if field_type.to_s.start_with? "T::Array"
            inner_type = field_type.type.raw_type
            unmarshalled_array = value.map{ |f| unmarshal_single(inner_type, f) }
            to_build.send(key, unmarshalled_array)
          elsif field_type.to_s.start_with? "T::Hash"
            _, val_type = field_type.type.types
            unmarshalled_hash = value.map{ |k, v| [k, unmarshal_single(val_type.raw_type, v)]}.to_h
            to_build.send(key, unmarshalled_hash)
          else
            decoder = field.metadata.fetch(:format_json, {}).fetch(:decoder, nil)
            final_value = unmarshal_single(field_type, value, decoder=decoder)
            to_build.send(key, final_value)
          end

        end
        to_build
      end

    end

    def initialize
      instance = allocate
      fields.each{ |mod| instance.singleton_class.include(mod) }
      instance.send(:initialize)
      instance
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    def fields
      self.class.fields
    end

    def field(field_name)
      for f in self.fields
        if f.name == field_name
          return f
        end
      end
    end

    def marshal_single field
      if field.respond_to? :marshal_json
        field.marshal_json encode=false
      else
        Utils::val_to_string(field, primitives=false)
      end
    end

    def marshal_json encode=true
      d = {}
      for field in self.fields.sort_by{|f| f.name}
        f = self.send(field.name)
        if f.nil?
          next
        end
        format_json_meta = field.metadata[:format_json]
        key = field.name
        if ! format_json_meta.nil?
          if format_json_meta.include? :letter_case
            key = format_json_meta[:letter_case].call(field.name)
          end
        end
        if f.is_a? Array
          d[key] = f.map{ |o| marshal_single(o) }
        elsif f.is_a? Hash
          d[key] = f.map { |k, v| [k, marshal_single(v)] }
        else
          d[key] = marshal_single(f)
        end
      end
      if encode
        JSON.dump(d)
      else
        d
      end
    end
  end
end 