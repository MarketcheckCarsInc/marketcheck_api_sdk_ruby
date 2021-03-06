=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Marketcheck_api_sdk
  class FacetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Facets
    # [Merged with the /search API - Please check the 'facets' parameter to the Search API above] Get the facets for the given simple filter criteria (by given VIN's basic specification, Or by Year, Make, Model, Trim criteria) and facet fields
    # @param fields Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @option opts [String] :vin VIN as a reference to the type of car for which facets data is to be returned
    # @option opts [String] :year Year of the car
    # @option opts [String] :make Make of the car
    # @option opts [String] :model Model of the Car
    # @option opts [String] :trim Trim of the Car
    # @return [Array<FacetItem>]
    def get_facets(fields, opts = {})
      data, _status_code, _headers = get_facets_with_http_info(fields, opts)
      data
    end

    # Facets
    # [Merged with the /search API - Please check the &#39;facets&#39; parameter to the Search API above] Get the facets for the given simple filter criteria (by given VIN&#39;s basic specification, Or by Year, Make, Model, Trim criteria) and facet fields
    # @param fields Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
    # @option opts [String] :vin VIN as a reference to the type of car for which facets data is to be returned
    # @option opts [String] :year Year of the car
    # @option opts [String] :make Make of the car
    # @option opts [String] :model Model of the Car
    # @option opts [String] :trim Trim of the Car
    # @return [Array<(Array<FacetItem>, Fixnum, Hash)>] Array<FacetItem> data, response status code and response headers
    def get_facets_with_http_info(fields, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FacetsApi.get_facets ...'
      end
      # verify the required parameter 'fields' is set
      if @api_client.config.client_side_validation && fields.nil?
        fail ArgumentError, "Missing the required parameter 'fields' when calling FacetsApi.get_facets"
      end
      # resource path
      local_var_path = '/facets'

      # query parameters
      query_params = {}
      query_params[:'fields'] = fields
      query_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?
      query_params[:'vin'] = opts[:'vin'] if !opts[:'vin'].nil?
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'make'] = opts[:'make'] if !opts[:'make'].nil?
      query_params[:'model'] = opts[:'model'] if !opts[:'model'].nil?
      query_params[:'trim'] = opts[:'trim'] if !opts[:'trim'].nil?

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
        :return_type => 'Array<FacetItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FacetsApi#get_facets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
