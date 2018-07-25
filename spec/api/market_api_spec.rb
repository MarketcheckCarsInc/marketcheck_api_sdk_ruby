=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Marketcheck_api_sdk::MarketApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketApi' do
  before do
    # run before each test
    @instance = Marketcheck_api_sdk::MarketApi.new
  end

  after do
    # run after each test
  end
  properties = {
    "vin" => %w[1FTNE2CM2FKA81288 1GYS4BKJ8FR290257 3GYFNBE3XFS537500 1FT7W2BT5FEA75059 1FMCU9J90FUA21186]
  }
  opts = { 
    api_key: 'example api key', # String | The API Authentication Key. Mandatory with all API calls.
    exact: 'true', # String | Exact parameter
    latitude: 37.998, # Float | Latitude component of location
    longitude: -84.522, # Float | Longitude component of location
    radius: 1000, # Integer | Radius around the search location
    debug: '1', # String | Debug parameter
  }
  # unit tests for get_mds
  # Market Days Supply
  # Get the basic information on specifications for a car identified by a valid VIN
  # @param vin VIN to decode
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [BOOLEAN] :exact Exact parameter
  # @option opts [Float] :latitude Latitude component of location
  # @option opts [Float] :longitude Longitude component of location
  # @option opts [Integer] :radius Radius around the search location
  # @option opts [Integer] :debug Debug parameter
  # @option opts [BOOLEAN] :include_sold To fetch sold vins
  # @return [Mds]
  describe 'get_mds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_popularity
  # Popularity
  # [MOCK] [Merged with the /search API - Please check the &#39;popularity&#39; parameter to the Search API above] Get the Popularity for the given simple filter criteria (by given Year, Make, Model, Trim criteria)
  # @param year Year of the car
  # @param make Make of the car
  # @param model Model of the Car
  # @param trim Trim of the Car
  # @param body_type Body type to filter the cars on. Valid values are the ones returned by body_type facets API call
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [String] :stats The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond.
  # @return [Array<PopularityItem>]
  describe 'validate MDS with debug and without exact' do
    opts.delete(:exact)
    it "should validate ymm available in response or not and will verify mds count" do
      properties["vin"].each{|vin|
        response = @instance.get_mds(vin, opts)
        expect(response.mds).not_to be nil
        expect('mds').not_to be 0
        expect('total_active_cars_for_ymmt').not_to be nil
        expect('total_active_cars_for_ymmt').not_to be 0
        expect('total_cars_sold_in_last_45_days').not_to be nil
        expect('total_cars_sold_in_last_45_days').not_to be 0
        per_day_sold_rate = ("%.2f" % Rational(response.total_cars_sold_in_last_45_days, 45)).to_f
        mds = (("%.2f" % Rational(response.total_active_cars_for_ymmt / per_day_sold_rate))).to_f.round
        expect(response.mds).to eq(mds)
      }
    end
  end

  # unit tests for get_sales_count
  # Get sales count by make, model, year, trim or taxonomy vin
  # Get a sales count for city, state or national level by make, model, year, trim or taxonomy vin
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [String] :car_type Inventory type for which sales count is to be searched, default is used
  # @option opts [String] :make Make for which sales count is to be searched
  # @option opts [String] :mm Make-Model for which sales count is to be searched, pipe seperated like mm&#x3D;ford|f-150
  # @option opts [String] :ymm Year-Make-Model for which sales count is to be searched, pipe seperated like ymm&#x3D;2015|ford|f-150
  # @option opts [String] :ymmt Year-Make-Model-Trim for which sales count is to be searched, pipe seperated like ymmt&#x3D;2015|ford|f-150|platinum
  # @option opts [String] :taxonomy_vin taxonomy_vin for which sales count is to be searched
  # @option opts [String] :state State level sales count
  # @option opts [String] :city_state City level sales count, pipe seperated like city_state&#x3D;jacksonville|FL
  # @option opts [String] :stats Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, dom (days on market) OR all
  # @return [Sales]
  describe 'validate MDS with debug and without extract' do
    it 'should validate mds count' do
      properties["vin"].each{|vin|
        result = @instance.get_mds(vin,opts)
        expect('mds').not_to be nil
        expect('mds').not_to be 0
        expect('total_active_cars_for_ymmt').not_to be nil
        expect('total_active_cars_for_ymmt').not_to be 0
        expect('total_cars_sold_in_last_45_days').not_to be nil
        expect('total_cars_sold_in_last_45_days').not_to be 0
        expect('total_cars_sold_in_last_45_days').not_to be nil
        expect('total_cars_sold_in_last_45_days').not_to be 0
        per_day_sold_rate = ("%.2f" % Rational(result.total_cars_sold_in_last_45_days, 45)).to_f
        mds = (("%.2f" % Rational(result.total_active_cars_for_ymmt / per_day_sold_rate))).to_f.round
        expect(result.mds).to eq(mds)
      }
      
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_trends
  # Get Trends for criteria
  # Get historical market trends for cars matching the given VIN&#39;s basic specification or Year, Make, Model, Trim (Optional) criteria
  # @param vin VIN as a reference to the type of car for which trend data is to be returned
  # @param car_type Car type. Allowed values are - new / used / certified
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [String] :year Year of the car
  # @option opts [String] :make Make of the car
  # @option opts [String] :model Model of the Car
  # @option opts [String] :trim Trim of the Car
  # @return [Array<TrendPoint>]
  describe 'get_trends test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
