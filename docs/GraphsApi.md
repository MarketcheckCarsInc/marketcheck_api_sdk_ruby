# Marketcheck_api_sdk::GraphsApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_price_miles_plot_data**](GraphsApi.md#get_price_miles_plot_data) | **GET** /plots | Price, Miles plots data for given criteria


# **get_price_miles_plot_data**
> Array&lt;PlotPoint&gt; get_price_miles_plot_data(car_type, opts)

Price, Miles plots data for given criteria

[DEPRECIATED Please check this in /search API using plot=true]Get price, miles plot data for active cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::GraphsApi.new

car_type = 'car_type_example' # String | Car type to get the scatter plot data for

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  vin: 'vin_example', # String | VIN as a reference to the type of car for which plot data is to be returned
  year: 'year_example', # String | Year of the car
  make: 'make_example', # String | Make of the car
  model: 'model_example', # String | Model of the Car
  trim: 'trim_example', # String | Trim of the Car
  rows: 'rows_example' # String | Number of results to return. Default is 1000. Max is 10000
}

begin
  #Price, Miles plots data for given criteria
  result = api_instance.get_price_miles_plot_data(car_type, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling GraphsApi->get_price_miles_plot_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **car_type** | **String**| Car type to get the scatter plot data for | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **vin** | **String**| VIN as a reference to the type of car for which plot data is to be returned | [optional] 
 **year** | **String**| Year of the car | [optional] 
 **make** | **String**| Make of the car | [optional] 
 **model** | **String**| Model of the Car | [optional] 
 **trim** | **String**| Trim of the Car | [optional] 
 **rows** | **String**| Number of results to return. Default is 1000. Max is 10000 | [optional] 

### Return type

[**Array&lt;PlotPoint&gt;**](PlotPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



