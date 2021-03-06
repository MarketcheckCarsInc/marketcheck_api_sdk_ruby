=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'airborne'
require 'pry'

# Unit tests for Marketcheck_api_sdk::DealerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DealerApi' do
  before do
    # run before each test
    @api_key = 'api key example'
    @instance = Marketcheck_api_sdk::DealerApi.new
    binding.pry
  end

  after do
    # run after each test
  end

  describe 'DealerApi spec' do
    it 'should create an instance of DealerApi' do
      begin
        dealer_id = '1006292' # String | Dealer id to get all the dealer info attributes
        opts = { 
          api_key: @api_key, # String | The API Authentication Key. Mandatory with all API calls.
        }
        result = @instance.get_dealer(dealer_id, opts)
        expect(result).not_to be_nil
        expect(result.id.should ==  "1006292")
        expect(@instance).to be_instance_of(Marketcheck_api_sdk::DealerApi)
      end
    end
  end

  # unit tests for dealer_search
  # Find car dealers around
  # The dealers API returns a list of dealers around a given point and radius. Max radius of only 50 miles is supported.
  # @param latitude Latitude component of location
  # @param longitude Longitude component of location
  # @param radius Radius around the search location
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [Float] :rows Number of results to return. Default is 10. Max is 50
  # @option opts [Float] :start Offset for the search results. Default is 1.
  # @return [DealersResponse]
  describe 'dealer_search test' do
    it 'should search dealers around given radius' do
      latitude = 43.1856307 # Float | Latitude component of location

      longitude = -77.7565881 # Float | Longitude component of location

      radius = 100 # Integer | Radius around the search location

      opts = { 
        api_key: 'api key example', # String | The API Authentication Key. Mandatory with all API calls.
        rows: 20, # Integer | Number of results to return. Default is 10. Max is 50
        start: 1 # Integer | Offset for the search results. Default is 1.
      }
      begin
        #Find car dealers around
        result = @instance.dealer_search(latitude, longitude, radius, opts)
        p result
        result.dealers.each{|dealer|
          expect(dealer.distance.should be < 100)
        }
      rescue Marketcheck_api_sdk::ApiError => e
        puts "Exception when calling DealerApi->dealer_search: #{e}"
      end
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer
  # Dealer by id
  # Get a particular dealer&#39;s information by its id
  # @param dealer_id Dealer id to get all the dealer info attributes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @return [Dealer]
  describe 'get_dealer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer_active_inventory
  # Dealer inventory
  # Get a dealer&#39;s currently active inventory
  # @param dealer_id Id representing the dealer to fetch the active inventory for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [String] :rows Number of results to return. Default is 10. Max is 50
  # @option opts [String] :start Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows
  # @return [BaseListing]
  describe 'get_dealer_active_inventory test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer_historical_inventory
  # Dealer&#39;s historical inventory
  # [v1 : Not Implemented Yet] - Get a dealer&#39;s historical inventory
  # @param dealer_id Id representing the dealer to fetch the active inventory for
  # @param [Hash] opts the optional parameters
  # @return [BaseListing]
  describe 'get_dealer_historical_inventory test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer_landing_page
  # Experimental: Get cached version of dealer landing page by dealer id
  # Experimental: Get cached version of dealer landing page by dealer id
  # @param dealer_id Robot id to get the landing page html for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @return [DealerLandingPage]
  describe 'get_dealer_landing_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer_ratings
  # Dealer&#39;s Rating
  # [MOCK] Get a dealer&#39;s Rating
  # @param dealer_id Id representing the dealer to fetch the ratings for
  # @param [Hash] opts the optional parameters
  # @return [DealerRating]
  describe 'get_dealer_ratings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dealer_reviews
  # Dealer&#39;s Review
  # [MOCK] Get a dealer&#39;s Review
  # @param dealer_id Id representing the dealer to fetch the ratings for
  # @param [Hash] opts the optional parameters
  # @return [DealerReview]
  describe 'get_dealer_reviews test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
