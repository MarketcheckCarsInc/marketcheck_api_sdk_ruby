=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Marketcheck_api_sdk
  class Dealer
    # The unique id associated with the dealer in the Marketcheck database
    attr_accessor :id

    # Name of the dealer
    attr_accessor :seller_name

    # Website of the dealer
    attr_accessor :inventory_url

    # Datasource of the dealer
    attr_accessor :data_source

    # Status of the dealer
    attr_accessor :status

    # Street of the dealer
    attr_accessor :street

    # City of the dealer
    attr_accessor :city

    # State of the dealer
    attr_accessor :state

    # country of the dealer
    attr_accessor :country

    # Zip of the dealer
    attr_accessor :zip

    # Latutide for the dealer location
    attr_accessor :latitude

    # Longitude for the dealer location
    attr_accessor :longitude

    # location_ll for the dealer location
    attr_accessor :location_ll

    # Contact no of the dealer
    attr_accessor :seller_phone

    # Contact email of the dealer
    attr_accessor :seller_email

    # Distance of dealer from given location
    attr_accessor :distance

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'seller_name' => :'seller_name',
        :'inventory_url' => :'inventory_url',
        :'data_source' => :'data_source',
        :'status' => :'status',
        :'street' => :'street',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'zip' => :'zip',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'location_ll' => :'location_ll',
        :'seller_phone' => :'seller_phone',
        :'seller_email' => :'seller_email',
        :'distance' => :'distance'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'seller_name' => :'String',
        :'inventory_url' => :'String',
        :'data_source' => :'String',
        :'status' => :'String',
        :'street' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'zip' => :'String',
        :'latitude' => :'String',
        :'longitude' => :'String',
        :'location_ll' => :'String',
        :'seller_phone' => :'String',
        :'seller_email' => :'String',
        :'distance' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'seller_name')
        self.seller_name = attributes[:'seller_name']
      end

      if attributes.has_key?(:'inventory_url')
        self.inventory_url = attributes[:'inventory_url']
      end

      if attributes.has_key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.has_key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.has_key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.has_key?(:'location_ll')
        self.location_ll = attributes[:'location_ll']
      end

      if attributes.has_key?(:'seller_phone')
        self.seller_phone = attributes[:'seller_phone']
      end

      if attributes.has_key?(:'seller_email')
        self.seller_email = attributes[:'seller_email']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          seller_name == o.seller_name &&
          inventory_url == o.inventory_url &&
          data_source == o.data_source &&
          status == o.status &&
          street == o.street &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          zip == o.zip &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          location_ll == o.location_ll &&
          seller_phone == o.seller_phone &&
          seller_email == o.seller_email &&
          distance == o.distance
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, seller_name, inventory_url, data_source, status, street, city, state, country, zip, latitude, longitude, location_ll, seller_phone, seller_email, distance].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = Marketcheck_api_sdk.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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