=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Marketcheck_api_sdk
  class VINDecoderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # VIN Decoder
    # Get the basic information on specifications for a car identified by a valid VIN
    # @param vin VIN to decode
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Build]
    def decode(vin, opts = {})
      data, _status_code, _headers = decode_with_http_info(vin, opts)
      data
    end

    # VIN Decoder
    # Get the basic information on specifications for a car identified by a valid VIN
    # @param vin VIN to decode
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Array<(Build, Fixnum, Hash)>] Build data, response status code and response headers
    def decode_with_http_info(vin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VINDecoderApi.decode ...'
      end
      # verify the required parameter 'vin' is set
      if @api_client.config.client_side_validation && vin.nil?
        fail ArgumentError, "Missing the required parameter 'vin' when calling VINDecoderApi.decode"
      end
      # resource path
      local_var_path = '/vin/{vin}/specs'.sub('{' + 'vin' + '}', vin.to_s)

      # query parameters
      query_params = {}
      query_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Build')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VINDecoderApi#decode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Economy based on environmental factors
    # [MOCK] Calculate Economy i.e. Environmental Friendliness
    # @param vin VIN as a reference to the type of car for which Environmental Economy data is to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Economy]
    def get_economy(vin, opts = {})
      data, _status_code, _headers = get_economy_with_http_info(vin, opts)
      data
    end

    # Get Economy based on environmental factors
    # [MOCK] Calculate Economy i.e. Environmental Friendliness
    # @param vin VIN as a reference to the type of car for which Environmental Economy data is to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Array<(Economy, Fixnum, Hash)>] Economy data, response status code and response headers
    def get_economy_with_http_info(vin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VINDecoderApi.get_economy ...'
      end
      # verify the required parameter 'vin' is set
      if @api_client.config.client_side_validation && vin.nil?
        fail ArgumentError, "Missing the required parameter 'vin' when calling VINDecoderApi.get_economy"
      end
      # resource path
      local_var_path = '/economy'

      # query parameters
      query_params = {}
      query_params[:'vin'] = vin
      query_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Economy')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VINDecoderApi#get_economy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get fuel effeciency
    # [MOCK] Calculate fuel efficiency from taxonomy db mileage values
    # @param vin VIN as a reference to the type of car for which fuel data is to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [FuelEfficiency]
    def get_efficiency(vin, opts = {})
      data, _status_code, _headers = get_efficiency_with_http_info(vin, opts)
      data
    end

    # Get fuel effeciency
    # [MOCK] Calculate fuel efficiency from taxonomy db mileage values
    # @param vin VIN as a reference to the type of car for which fuel data is to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Array<(FuelEfficiency, Fixnum, Hash)>] FuelEfficiency data, response status code and response headers
    def get_efficiency_with_http_info(vin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VINDecoderApi.get_efficiency ...'
      end
      # verify the required parameter 'vin' is set
      if @api_client.config.client_side_validation && vin.nil?
        fail ArgumentError, "Missing the required parameter 'vin' when calling VINDecoderApi.get_efficiency"
      end
      # resource path
      local_var_path = '/fuel_efficiency'

      # query parameters
      query_params = {}
      query_params[:'vin'] = vin
      query_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FuelEfficiency')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VINDecoderApi#get_efficiency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Safety Rating
    # [MOCK] Get Safety ratings from third party sources
    # @param vin VIN to fetch the safety ratings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [SafetyRating]
    def get_safety_rating(vin, opts = {})
      data, _status_code, _headers = get_safety_rating_with_http_info(vin, opts)
      data
    end

    # Get Safety Rating
    # [MOCK] Get Safety ratings from third party sources
    # @param vin VIN to fetch the safety ratings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @return [Array<(SafetyRating, Fixnum, Hash)>] SafetyRating data, response status code and response headers
    def get_safety_rating_with_http_info(vin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VINDecoderApi.get_safety_rating ...'
      end
      # verify the required parameter 'vin' is set
      if @api_client.config.client_side_validation && vin.nil?
        fail ArgumentError, "Missing the required parameter 'vin' when calling VINDecoderApi.get_safety_rating"
      end
      # resource path
      local_var_path = '/safety'

      # query parameters
      query_params = {}
      query_params[:'vin'] = vin
      query_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SafetyRating')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VINDecoderApi#get_safety_rating\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
