=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module MuxRuby
  # An object that describes how the image file referenced in url should be placed over the video (i.e. watermarking).
  class InputSettingsOverlaySettings
    # Where the vertical positioning of the overlay/watermark should begin from. Defaults to `\"top\"`
    attr_accessor :vertical_align

    # The distance from the vertical_align starting point and the image's closest edge. Can be expressed as a percent (\"10%\") or as a pixel value (\"100px\"). Negative values will move the overlay offscreen. In the case of 'middle', a positive value will shift the overlay towards the bottom and and a negative value will shift it towards the top.
    attr_accessor :vertical_margin

    # Where the horizontal positioning of the overlay/watermark should begin from.
    attr_accessor :horizontal_align

    # The distance from the horizontal_align starting point and the image's closest edge. Can be expressed as a percent (\"10%\") or as a pixel value (\"100px\"). Negative values will move the overlay offscreen. In the case of 'center', a positive value will shift the image towards the right and and a negative value will shift it towards the left.
    attr_accessor :horizontal_margin

    # How wide the overlay should appear. Can be expressed as a percent (\"10%\") or as a pixel value (\"100px\"). If both width and height are left blank the width will be the true pixels of the image, applied as if the video has been scaled to fit a 1920x1080 frame. If height is supplied with no width, the width will scale proportionally to the height.
    attr_accessor :width

    # How tall the overlay should appear. Can be expressed as a percent (\"10%\") or as a pixel value (\"100px\"). If both width and height are left blank the height will be the true pixels of the image, applied as if the video has been scaled to fit a 1920x1080 frame. If width is supplied with no height, the height will scale proportionally to the width.
    attr_accessor :height

    # How opaque the overlay should appear, expressed as a percent. (Default 100%)
    attr_accessor :opacity

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'vertical_align' => :'vertical_align',
        :'vertical_margin' => :'vertical_margin',
        :'horizontal_align' => :'horizontal_align',
        :'horizontal_margin' => :'horizontal_margin',
        :'width' => :'width',
        :'height' => :'height',
        :'opacity' => :'opacity'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'vertical_align' => :'String',
        :'vertical_margin' => :'String',
        :'horizontal_align' => :'String',
        :'horizontal_margin' => :'String',
        :'width' => :'String',
        :'height' => :'String',
        :'opacity' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::InputSettingsOverlaySettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::InputSettingsOverlaySettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'vertical_align')
        self.vertical_align = attributes[:'vertical_align']
      end

      if attributes.key?(:'vertical_margin')
        self.vertical_margin = attributes[:'vertical_margin']
      end

      if attributes.key?(:'horizontal_align')
        self.horizontal_align = attributes[:'horizontal_align']
      end

      if attributes.key?(:'horizontal_margin')
        self.horizontal_margin = attributes[:'horizontal_margin']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'opacity')
        self.opacity = attributes[:'opacity']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      vertical_align_validator = EnumAttributeValidator.new('String', ["top", "middle", "bottom"])
      return false unless vertical_align_validator.valid?(@vertical_align)
      horizontal_align_validator = EnumAttributeValidator.new('String', ["left", "center", "right"])
      return false unless horizontal_align_validator.valid?(@horizontal_align)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_align Object to be assigned
    def vertical_align=(vertical_align)
      validator = EnumAttributeValidator.new('String', ["top", "middle", "bottom"])
      unless validator.valid?(vertical_align)
        fail ArgumentError, "invalid value for \"vertical_align\", must be one of #{validator.allowable_values}."
      end
      @vertical_align = vertical_align
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] horizontal_align Object to be assigned
    def horizontal_align=(horizontal_align)
      validator = EnumAttributeValidator.new('String', ["left", "center", "right"])
      unless validator.valid?(horizontal_align)
        fail ArgumentError, "invalid value for \"horizontal_align\", must be one of #{validator.allowable_values}."
      end
      @horizontal_align = horizontal_align
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          vertical_align == o.vertical_align &&
          vertical_margin == o.vertical_margin &&
          horizontal_align == o.horizontal_align &&
          horizontal_margin == o.horizontal_margin &&
          width == o.width &&
          height == o.height &&
          opacity == o.opacity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [vertical_align, vertical_margin, horizontal_align, horizontal_margin, width, height, opacity].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MuxRuby.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
