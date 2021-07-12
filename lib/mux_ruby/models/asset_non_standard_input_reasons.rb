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
  # An object containing one or more reasons the input file is non-standard. See [the guide on minimizing processing time](https://docs.mux.com/guides/video/minimize-processing-time) for more information on what a standard input is defined as. This object only exists on on-demand assets that have non-standard inputs, so if missing you can assume the input qualifies as standard.
  class AssetNonStandardInputReasons
    # The video codec used on the input file. For example, the input file encoded with `hevc` video codec is non-standard and the value of this parameter is `hevc`.
    attr_accessor :video_codec

    # The audio codec used on the input file. Non-AAC audio codecs are non-standard.
    attr_accessor :audio_codec

    # The video key frame Interval (also called as Group of Picture or GOP) of the input file is `high`. This parameter is present when the gop is greater than 10 seconds.
    attr_accessor :video_gop_size

    # The video frame rate of the input file. Video with average frames per second (fps) less than 10 or greater than 120 is non-standard. A `-1` frame rate value indicates Mux could not determine the frame rate of the video track.
    attr_accessor :video_frame_rate

    # The video resolution of the input file. Video resolution higher than 2048 pixels on any one dimension (height or width) is considered non-standard, The resolution value is presented as `width` x `height` in pixels.
    attr_accessor :video_resolution

    # The video pixel aspect ratio of the input file.
    attr_accessor :pixel_aspect_ratio

    # Video Edit List reason indicates that the input file's video track contains a complex Edit Decision List.
    attr_accessor :video_edit_list

    # Audio Edit List reason indicates that the input file's audio track contains a complex Edit Decision List.
    attr_accessor :audio_edit_list

    # A catch-all reason when the input file in created with non-standard encoding parameters.
    attr_accessor :unexpected_media_file_parameters

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
        :'video_codec' => :'video_codec',
        :'audio_codec' => :'audio_codec',
        :'video_gop_size' => :'video_gop_size',
        :'video_frame_rate' => :'video_frame_rate',
        :'video_resolution' => :'video_resolution',
        :'pixel_aspect_ratio' => :'pixel_aspect_ratio',
        :'video_edit_list' => :'video_edit_list',
        :'audio_edit_list' => :'audio_edit_list',
        :'unexpected_media_file_parameters' => :'unexpected_media_file_parameters'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'video_codec' => :'String',
        :'audio_codec' => :'String',
        :'video_gop_size' => :'String',
        :'video_frame_rate' => :'String',
        :'video_resolution' => :'String',
        :'pixel_aspect_ratio' => :'String',
        :'video_edit_list' => :'String',
        :'audio_edit_list' => :'String',
        :'unexpected_media_file_parameters' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::AssetNonStandardInputReasons` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::AssetNonStandardInputReasons`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'video_codec')
        self.video_codec = attributes[:'video_codec']
      end

      if attributes.key?(:'audio_codec')
        self.audio_codec = attributes[:'audio_codec']
      end

      if attributes.key?(:'video_gop_size')
        self.video_gop_size = attributes[:'video_gop_size']
      end

      if attributes.key?(:'video_frame_rate')
        self.video_frame_rate = attributes[:'video_frame_rate']
      end

      if attributes.key?(:'video_resolution')
        self.video_resolution = attributes[:'video_resolution']
      end

      if attributes.key?(:'pixel_aspect_ratio')
        self.pixel_aspect_ratio = attributes[:'pixel_aspect_ratio']
      end

      if attributes.key?(:'video_edit_list')
        self.video_edit_list = attributes[:'video_edit_list']
      end

      if attributes.key?(:'audio_edit_list')
        self.audio_edit_list = attributes[:'audio_edit_list']
      end

      if attributes.key?(:'unexpected_media_file_parameters')
        self.unexpected_media_file_parameters = attributes[:'unexpected_media_file_parameters']
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
      video_gop_size_validator = EnumAttributeValidator.new('String', ["high"])
      return false unless video_gop_size_validator.valid?(@video_gop_size)
      video_edit_list_validator = EnumAttributeValidator.new('String', ["non-standard"])
      return false unless video_edit_list_validator.valid?(@video_edit_list)
      audio_edit_list_validator = EnumAttributeValidator.new('String', ["non-standard"])
      return false unless audio_edit_list_validator.valid?(@audio_edit_list)
      unexpected_media_file_parameters_validator = EnumAttributeValidator.new('String', ["non-standard"])
      return false unless unexpected_media_file_parameters_validator.valid?(@unexpected_media_file_parameters)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] video_gop_size Object to be assigned
    def video_gop_size=(video_gop_size)
      validator = EnumAttributeValidator.new('String', ["high"])
      unless validator.valid?(video_gop_size)
        fail ArgumentError, "invalid value for \"video_gop_size\", must be one of #{validator.allowable_values}."
      end
      @video_gop_size = video_gop_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] video_edit_list Object to be assigned
    def video_edit_list=(video_edit_list)
      validator = EnumAttributeValidator.new('String', ["non-standard"])
      unless validator.valid?(video_edit_list)
        fail ArgumentError, "invalid value for \"video_edit_list\", must be one of #{validator.allowable_values}."
      end
      @video_edit_list = video_edit_list
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] audio_edit_list Object to be assigned
    def audio_edit_list=(audio_edit_list)
      validator = EnumAttributeValidator.new('String', ["non-standard"])
      unless validator.valid?(audio_edit_list)
        fail ArgumentError, "invalid value for \"audio_edit_list\", must be one of #{validator.allowable_values}."
      end
      @audio_edit_list = audio_edit_list
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unexpected_media_file_parameters Object to be assigned
    def unexpected_media_file_parameters=(unexpected_media_file_parameters)
      validator = EnumAttributeValidator.new('String', ["non-standard"])
      unless validator.valid?(unexpected_media_file_parameters)
        fail ArgumentError, "invalid value for \"unexpected_media_file_parameters\", must be one of #{validator.allowable_values}."
      end
      @unexpected_media_file_parameters = unexpected_media_file_parameters
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          video_codec == o.video_codec &&
          audio_codec == o.audio_codec &&
          video_gop_size == o.video_gop_size &&
          video_frame_rate == o.video_frame_rate &&
          video_resolution == o.video_resolution &&
          pixel_aspect_ratio == o.pixel_aspect_ratio &&
          video_edit_list == o.video_edit_list &&
          audio_edit_list == o.audio_edit_list &&
          unexpected_media_file_parameters == o.unexpected_media_file_parameters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [video_codec, audio_codec, video_gop_size, video_frame_rate, video_resolution, pixel_aspect_ratio, video_edit_list, audio_edit_list, unexpected_media_file_parameters].hash
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
