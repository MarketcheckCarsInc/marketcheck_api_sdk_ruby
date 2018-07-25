# Marketcheck_api_sdk::FacetsApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_facets**](FacetsApi.md#get_facets) | **GET** /facets | Facets


# **get_facets**
> Array&lt;FacetItem&gt; get_facets(fields, opts)

Facets

[Merged with the /search API - Please check the 'facets' parameter to the Search API above] Get the facets for the given simple filter criteria (by given VIN's basic specification, Or by Year, Make, Model, Trim criteria) and facet fields

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::FacetsApi.new

fields = 'fields_example' # String | Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  vin: 'vin_example', # String | VIN as a reference to the type of car for which facets data is to be returned
  year: 'year_example', # String | Year of the car
  make: 'make_example', # String | Make of the car
  model: 'model_example', # String | Model of the Car
  trim: 'trim_example' # String | Trim of the Car
}

begin
  #Facets
  result = api_instance.get_facets(fields, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling FacetsApi->get_facets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | **String**| Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **vin** | **String**| VIN as a reference to the type of car for which facets data is to be returned | [optional] 
 **year** | **String**| Year of the car | [optional] 
 **make** | **String**| Make of the car | [optional] 
 **model** | **String**| Model of the Car | [optional] 
 **trim** | **String**| Trim of the Car | [optional] 

### Return type

[**Array&lt;FacetItem&gt;**](FacetItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



