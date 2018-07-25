# Marketcheck_api_sdk::VINDecoderApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decode**](VINDecoderApi.md#decode) | **GET** /vin/{vin}/specs | VIN Decoder
[**get_economy**](VINDecoderApi.md#get_economy) | **GET** /economy | Get Economy based on environmental factors
[**get_efficiency**](VINDecoderApi.md#get_efficiency) | **GET** /fuel_efficiency | Get fuel effeciency
[**get_safety_rating**](VINDecoderApi.md#get_safety_rating) | **GET** /safety | Get Safety Rating


# **decode**
> Build decode(vin, opts)

VIN Decoder

Get the basic information on specifications for a car identified by a valid VIN

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::VINDecoderApi.new

vin = 'vin_example' # String | VIN to decode

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #VIN Decoder
  result = api_instance.decode(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling VINDecoderApi->decode: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN to decode | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_economy**
> Economy get_economy(vin, opts)

Get Economy based on environmental factors

[MOCK] Calculate Economy i.e. Environmental Friendliness

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::VINDecoderApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which Environmental Economy data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Get Economy based on environmental factors
  result = api_instance.get_economy(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling VINDecoderApi->get_economy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which Environmental Economy data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Economy**](Economy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_efficiency**
> FuelEfficiency get_efficiency(vin, opts)

Get fuel effeciency

[MOCK] Calculate fuel efficiency from taxonomy db mileage values

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::VINDecoderApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which fuel data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Get fuel effeciency
  result = api_instance.get_efficiency(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling VINDecoderApi->get_efficiency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which fuel data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**FuelEfficiency**](FuelEfficiency.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_safety_rating**
> SafetyRating get_safety_rating(vin, opts)

Get Safety Rating

[MOCK] Get Safety ratings from third party sources

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::VINDecoderApi.new

vin = 'vin_example' # String | VIN to fetch the safety ratings

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Get Safety Rating
  result = api_instance.get_safety_rating(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling VINDecoderApi->get_safety_rating: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN to fetch the safety ratings | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**SafetyRating**](SafetyRating.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



