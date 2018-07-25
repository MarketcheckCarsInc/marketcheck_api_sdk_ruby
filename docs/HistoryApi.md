# Marketcheck_api_sdk::HistoryApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**history**](HistoryApi.md#history) | **GET** /history/{vin} | Get a cars online listing history


# **history**
> Array&lt;HistoricalListing&gt; history(vin, opts)

Get a cars online listing history

The history API returns online listing history for a car identified by its VIN. History listings are sorted in the descending order of the listing date / last seen date

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::HistoryApi.new

vin = 'vin_example' # String | The VIN to identify the car to fetch the listing history. Must be a valid 17 char VIN

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  fields: 'fields_example', # String | List of fields to fetch, in case the default fields list in the response is to be trimmed down
  page: 8.14 # Float | Page number to fetch the results for the given criteria. Default is 1.
}

begin
  #Get a cars online listing history
  result = api_instance.history(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling HistoryApi->history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| The VIN to identify the car to fetch the listing history. Must be a valid 17 char VIN | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **fields** | **String**| List of fields to fetch, in case the default fields list in the response is to be trimmed down | [optional] 
 **page** | **Float**| Page number to fetch the results for the given criteria. Default is 1. | [optional] 

### Return type

[**Array&lt;HistoricalListing&gt;**](HistoricalListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



