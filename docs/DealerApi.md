# Marketcheck_api_sdk::DealerApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dealer_search**](DealerApi.md#dealer_search) | **GET** /dealers | Find car dealers around
[**get_dealer**](DealerApi.md#get_dealer) | **GET** /dealer/{dealer_id} | Dealer by id
[**get_dealer_active_inventory**](DealerApi.md#get_dealer_active_inventory) | **GET** /dealer/{dealer_id}/active/inventory | Dealer inventory
[**get_dealer_historical_inventory**](DealerApi.md#get_dealer_historical_inventory) | **GET** /dealer/{dealer_id}/historical/inventory | Dealer&#39;s historical inventory
[**get_dealer_landing_page**](DealerApi.md#get_dealer_landing_page) | **GET** /dealer/{dealer_id}/landing | Experimental: Get cached version of dealer landing page by dealer id
[**get_dealer_ratings**](DealerApi.md#get_dealer_ratings) | **GET** /dealer/{dealer_id}/ratings | Dealer&#39;s Rating
[**get_dealer_reviews**](DealerApi.md#get_dealer_reviews) | **GET** /dealer/{dealer_id}/reviews | Dealer&#39;s Review


# **dealer_search**
> DealersResponse dealer_search(latitude, longitude, radius, opts)

Find car dealers around

The dealers API returns a list of dealers around a given point and radius.

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

latitude = 1.2 # Float | Latitude component of location

longitude = 1.2 # Float | Longitude component of location

radius = 56 # Integer | Radius around the search location

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  rows: 8.14, # Float | Number of results to return. Default is 10. Max is 50
  start: 8.14 # Float | Offset for the search results. Default is 1.
}

begin
  #Find car dealers around
  result = api_instance.dealer_search(latitude, longitude, radius, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->dealer_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **Float**| Latitude component of location | 
 **longitude** | **Float**| Longitude component of location | 
 **radius** | **Integer**| Radius around the search location | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **rows** | **Float**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **Float**| Offset for the search results. Default is 1. | [optional] 

### Return type

[**DealersResponse**](DealersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dealer**
> Dealer get_dealer(dealer_id, opts)

Dealer by id

Get a particular dealer's information by its id

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

dealer_id = 'dealer_id_example' # String | Dealer id to get all the dealer info attributes

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Dealer by id
  result = api_instance.get_dealer(dealer_id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->get_dealer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Dealer id to get all the dealer info attributes | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Dealer**](Dealer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dealer_active_inventory**
> BaseListing get_dealer_active_inventory(dealer_id, opts)

Dealer inventory

Get a dealer's currently active inventory

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

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
  puts "Exception when calling DealerApi->get_dealer_active_inventory: #{e}"
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

api_instance = Marketcheck_api_sdk::DealerApi.new

dealer_id = 'dealer_id_example' # String | Id representing the dealer to fetch the active inventory for


begin
  #Dealer's historical inventory
  result = api_instance.get_dealer_historical_inventory(dealer_id)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->get_dealer_historical_inventory: #{e}"
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



# **get_dealer_landing_page**
> DealerLandingPage get_dealer_landing_page(dealer_id, opts)

Experimental: Get cached version of dealer landing page by dealer id

Experimental: Get cached version of dealer landing page by dealer id

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

dealer_id = 'dealer_id_example' # String | Robot id to get the landing page html for

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Experimental: Get cached version of dealer landing page by dealer id
  result = api_instance.get_dealer_landing_page(dealer_id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->get_dealer_landing_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Robot id to get the landing page html for | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**DealerLandingPage**](DealerLandingPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dealer_ratings**
> DealerRating get_dealer_ratings(dealer_id)

Dealer's Rating

[MOCK] Get a dealer's Rating

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

dealer_id = 'dealer_id_example' # String | Id representing the dealer to fetch the ratings for


begin
  #Dealer's Rating
  result = api_instance.get_dealer_ratings(dealer_id)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->get_dealer_ratings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Id representing the dealer to fetch the ratings for | 

### Return type

[**DealerRating**](DealerRating.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dealer_reviews**
> DealerReview get_dealer_reviews(dealer_id)

Dealer's Review

[MOCK] Get a dealer's Review

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::DealerApi.new

dealer_id = 'dealer_id_example' # String | Id representing the dealer to fetch the ratings for


begin
  #Dealer's Review
  result = api_instance.get_dealer_reviews(dealer_id)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling DealerApi->get_dealer_reviews: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **String**| Id representing the dealer to fetch the ratings for | 

### Return type

[**DealerReview**](DealerReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



