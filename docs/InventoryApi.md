# Marketcheck_api_sdk::InventoryApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dealer_active_inventory**](InventoryApi.md#get_dealer_active_inventory) | **GET** /dealer/{dealer_id}/active/inventory | Dealer inventory
[**get_dealer_historical_inventory**](InventoryApi.md#get_dealer_historical_inventory) | **GET** /dealer/{dealer_id}/historical/inventory | Dealer&#39;s historical inventory


# **get_dealer_active_inventory**
> BaseListing get_dealer_active_inventory(dealer_id, opts)

Dealer inventory

Get a dealer's currently active inventory

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::InventoryApi.new

dealer_id = 'dealer_id_example' # String | Id representing the dealer to fetch the active inventory for

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  rows: 'rows_example', # String | Number of results to return. Default is 10. Max is 50
  start: 'start_example' # String | Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows
}

begin
  #Dealer inventory
  result = api_instance.get_dealer_active_inventory(dealer_id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling InventoryApi->get_dealer_active_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Id representing the dealer to fetch the active inventory for | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **rows** | **String**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **String**| Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows | [optional] 

### Return type

[**BaseListing**](BaseListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dealer_historical_inventory**
> BaseListing get_dealer_historical_inventory(dealer_id)

Dealer's historical inventory

[v1 : Not Implemented Yet] - Get a dealer's historical inventory

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::InventoryApi.new

dealer_id = 'dealer_id_example' # String | Id representing the dealer to fetch the active inventory for


begin
  #Dealer's historical inventory
  result = api_instance.get_dealer_historical_inventory(dealer_id)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling InventoryApi->get_dealer_historical_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Id representing the dealer to fetch the active inventory for | 

### Return type

[**BaseListing**](BaseListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



