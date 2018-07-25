=begin
#Marketcheck Cars API

#<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'pry'
require 'airborne'

# Unit tests for Marketcheck_api_sdk::HistoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HistoryApi' do
  before do
    # run before each test
    @api_key = "api key example"
    @instance = Marketcheck_api_sdk::HistoryApi.new
    
  end

  after do
    # run after each test
  end
  vins = %w[1FTEW1EF9GKE64460 NM0LS7E78G1263750 1FTNE1CM0FKA52494 1FADP3N21FL364871 1FTEW1EG1FFB24493]
  describe 'test an instance of HistoryApi' do
   
    begin
      vins.each {|vin|
        it "should validate history of vin - #{vin}" do
          opts = { api_key: @api_key} # String | The API Authentication Key. Mandatory with all API calls. } 
          result = @instance.history(vin, opts)
          expect(result).not_to be_nil
          expect(@instance).to be_instance_of(Marketcheck_api_sdk::HistoryApi)
          last_seen_at_ary = []
          result.each{ |vin_obj|
            last_seen_at_ary << vin_obj.last_seen_at
            expect(result).not_to be_empty
            expect(last_seen_at_ary).to eq(last_seen_at_ary.sort.reverse)
            expect(result.size).to eq(result.uniq.size)
          }
        end
      }
    rescue Marketcheck_api_sdk::ApiError => e
      puts "Exception when calling HistoryApi->history: #{e}"
    end
  end

  # unit tests for history
  # Get a cars online listing history
  # The history API returns online listing history for a car identified by its VIN. History listings are sorted in the descending order of the listing date / last seen date
  # @param vin The VIN to identify the car to fetch the listing history. Must be a valid 17 char VIN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key The API Authentication Key. Mandatory with all API calls.
  # @option opts [String] :fields List of fields to fetch, in case the default fields list in the response is to be trimmed down
  # @option opts [Float] :rows Number of results to return. Default is 10. Max is 50
  # @option opts [Float] :page Page number to fetch the results for the given criteria. Default is 1.
  # @return [Array<HistoricalListing>]
  describe 'history test' do
    it 'should work' do
      vins.each do |vin|
        opts = { 
          api_key: @api_key, # String | The API Authentication Key. Mandatory with all API calls.
          fields: 'seller_name,seller_type,inventory_type,is_searchable,dealer_id,source, data_source' # String | List of fields to fetch, in case the default fields list in the response is to be trimmed down
        }
         result = @instance.history(vin, opts)
         expect(result).not_to be_empty
         result.each{|res|
           expect(res.inventory_type && res.seller_type && res.seller_name && res.dealer_id).not_to be_nil
         }
      end
    end
  end

end
