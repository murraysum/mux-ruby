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
  class LiveStream
    # Unique identifier for the Live Stream. Max 255 characters.
    attr_accessor :id

    # Time the Live Stream was created, defined as a Unix timestamp (seconds since epoch).
    attr_accessor :created_at

    # Unique key used for streaming to a Mux RTMP endpoint. This should be considered as sensitive as credentials, anyone with this stream key can begin streaming.
    attr_accessor :stream_key

    # The Asset that is currently being created if there is an active broadcast.
    attr_accessor :active_asset_id

    # An array of strings with the most recent Assets that were created from this live stream.
    attr_accessor :recent_asset_ids

    attr_accessor :status

    # An array of Playback ID objects. Use these to create HLS playback URLs. See [Play your videos](https://docs.mux.com/guides/video/play-your-videos) for more details.
    attr_accessor :playback_ids

    attr_accessor :new_asset_settings

    # Arbitrary user-supplied metadata set for the asset. Max 255 characters.
    attr_accessor :passthrough

    # The live stream only processes the audio track if the value is set to true. Mux drops the video track if broadcasted.
    attr_accessor :audio_only

    # Describes the embedded closed caption configuration of the incoming live stream.
    attr_accessor :embedded_subtitles

    # When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. **Min**: 0.1s. **Max**: 300s (5 minutes).
    attr_accessor :reconnect_window

    # This field is deprecated. Please use latency_mode instead. Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Set this if you want lower latency for your live stream. **Note**: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. See the [Reduce live stream latency guide](https://docs.mux.com/guides/video/reduce-live-stream-latency) to understand the tradeoffs.
    attr_accessor :reduced_latency

    # This field is deprecated. Please use latency_mode instead. Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Setting this option will enable compatibility with the LL-HLS specification for low-latency streaming. This typically has lower latency than Reduced Latency streams, and cannot be combined with Reduced Latency. Note: Reconnect windows are incompatible with Low Latency and will always be set to zero (0) seconds.
    attr_accessor :low_latency

    # Each Simulcast Target contains configuration details to broadcast (or \"restream\") a live stream to a third-party streaming service. [See the Stream live to 3rd party platforms guide](https://docs.mux.com/guides/video/stream-live-to-3rd-party-platforms).
    attr_accessor :simulcast_targets

    # Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Set this as an alternative to setting low latency or reduced latency flags. The Low Latency value is a beta feature. Note: Reconnect windows are incompatible with Reduced Latency and Low Latency and will always be set to zero (0) seconds. Read more here: https://mux.com/blog/introducing-low-latency-live-streaming/
    attr_accessor :latency_mode

    # True means this live stream is a test live stream. Test live streams can be used to help evaluate the Mux Video APIs for free. There is no limit on the number of test live streams, but they are watermarked with the Mux logo, and limited to 5 minutes. The test live stream is disabled after the stream is active for 5 mins and the recorded asset also deleted after 24 hours.
    attr_accessor :test

    # The time in seconds a live stream may be continuously active before being disconnected. Defaults to 12 hours.
    attr_accessor :max_continuous_duration

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
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'stream_key' => :'stream_key',
        :'active_asset_id' => :'active_asset_id',
        :'recent_asset_ids' => :'recent_asset_ids',
        :'status' => :'status',
        :'playback_ids' => :'playback_ids',
        :'new_asset_settings' => :'new_asset_settings',
        :'passthrough' => :'passthrough',
        :'audio_only' => :'audio_only',
        :'embedded_subtitles' => :'embedded_subtitles',
        :'reconnect_window' => :'reconnect_window',
        :'reduced_latency' => :'reduced_latency',
        :'low_latency' => :'low_latency',
        :'simulcast_targets' => :'simulcast_targets',
        :'latency_mode' => :'latency_mode',
        :'test' => :'test',
        :'max_continuous_duration' => :'max_continuous_duration'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'String',
        :'stream_key' => :'String',
        :'active_asset_id' => :'String',
        :'recent_asset_ids' => :'Array<String>',
        :'status' => :'LiveStreamStatus',
        :'playback_ids' => :'Array<PlaybackID>',
        :'new_asset_settings' => :'CreateAssetRequest',
        :'passthrough' => :'String',
        :'audio_only' => :'Boolean',
        :'embedded_subtitles' => :'Array<LiveStreamEmbeddedSubtitleSettings>',
        :'reconnect_window' => :'Float',
        :'reduced_latency' => :'Boolean',
        :'low_latency' => :'Boolean',
        :'simulcast_targets' => :'Array<SimulcastTarget>',
        :'latency_mode' => :'String',
        :'test' => :'Boolean',
        :'max_continuous_duration' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::LiveStream` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::LiveStream`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'stream_key')
        self.stream_key = attributes[:'stream_key']
      end

      if attributes.key?(:'active_asset_id')
        self.active_asset_id = attributes[:'active_asset_id']
      end

      if attributes.key?(:'recent_asset_ids')
        if (value = attributes[:'recent_asset_ids']).is_a?(Array)
          self.recent_asset_ids = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'playback_ids')
        if (value = attributes[:'playback_ids']).is_a?(Array)
          self.playback_ids = value
        end
      end

      if attributes.key?(:'new_asset_settings')
        self.new_asset_settings = attributes[:'new_asset_settings']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'audio_only')
        self.audio_only = attributes[:'audio_only']
      end

      if attributes.key?(:'embedded_subtitles')
        if (value = attributes[:'embedded_subtitles']).is_a?(Array)
          self.embedded_subtitles = value
        end
      end

      if attributes.key?(:'reconnect_window')
        self.reconnect_window = attributes[:'reconnect_window']
      else
        self.reconnect_window = 60
      end

      if attributes.key?(:'reduced_latency')
        self.reduced_latency = attributes[:'reduced_latency']
      end

      if attributes.key?(:'low_latency')
        self.low_latency = attributes[:'low_latency']
      end

      if attributes.key?(:'simulcast_targets')
        if (value = attributes[:'simulcast_targets']).is_a?(Array)
          self.simulcast_targets = value
        end
      end

      if attributes.key?(:'latency_mode')
        self.latency_mode = attributes[:'latency_mode']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
      end

      if attributes.key?(:'max_continuous_duration')
        self.max_continuous_duration = attributes[:'max_continuous_duration']
      else
        self.max_continuous_duration = 43200
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@max_continuous_duration.nil? && @max_continuous_duration > 43200
        invalid_properties.push('invalid value for "max_continuous_duration", must be smaller than or equal to 43200.')
      end

      if !@max_continuous_duration.nil? && @max_continuous_duration < 60
        invalid_properties.push('invalid value for "max_continuous_duration", must be greater than or equal to 60.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      latency_mode_validator = EnumAttributeValidator.new('String', ["low", "reduced", "standard"])
      return false unless latency_mode_validator.valid?(@latency_mode)
      return false if !@max_continuous_duration.nil? && @max_continuous_duration > 43200
      return false if !@max_continuous_duration.nil? && @max_continuous_duration < 60
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latency_mode Object to be assigned
    def latency_mode=(latency_mode)
      validator = EnumAttributeValidator.new('String', ["low", "reduced", "standard"])
      unless validator.valid?(latency_mode)
        fail ArgumentError, "invalid value for \"latency_mode\", must be one of #{validator.allowable_values}."
      end
      @latency_mode = latency_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] max_continuous_duration Value to be assigned
    def max_continuous_duration=(max_continuous_duration)
      if !max_continuous_duration.nil? && max_continuous_duration > 43200
        fail ArgumentError, 'invalid value for "max_continuous_duration", must be smaller than or equal to 43200.'
      end

      if !max_continuous_duration.nil? && max_continuous_duration < 60
        fail ArgumentError, 'invalid value for "max_continuous_duration", must be greater than or equal to 60.'
      end

      @max_continuous_duration = max_continuous_duration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          stream_key == o.stream_key &&
          active_asset_id == o.active_asset_id &&
          recent_asset_ids == o.recent_asset_ids &&
          status == o.status &&
          playback_ids == o.playback_ids &&
          new_asset_settings == o.new_asset_settings &&
          passthrough == o.passthrough &&
          audio_only == o.audio_only &&
          embedded_subtitles == o.embedded_subtitles &&
          reconnect_window == o.reconnect_window &&
          reduced_latency == o.reduced_latency &&
          low_latency == o.low_latency &&
          simulcast_targets == o.simulcast_targets &&
          latency_mode == o.latency_mode &&
          test == o.test &&
          max_continuous_duration == o.max_continuous_duration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, stream_key, active_asset_id, recent_asset_ids, status, playback_ids, new_asset_settings, passthrough, audio_only, embedded_subtitles, reconnect_window, reduced_latency, low_latency, simulcast_targets, latency_mode, test, max_continuous_duration].hash
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
