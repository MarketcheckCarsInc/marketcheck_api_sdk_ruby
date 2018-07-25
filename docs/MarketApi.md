# Marketcheck_api_sdk::MarketApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_averages**](MarketApi.md#get_averages) | **GET** /averages | [MOCK] Get Averages for YMM
[**get_comparison**](MarketApi.md#get_comparison) | **GET** /comparison | Compare market
[**get_competition**](MarketApi.md#get_competition) | **GET** /competition | Competitors
[**get_depreciation**](MarketApi.md#get_depreciation) | **GET** /depreciation | Depreciation
[**get_mds**](MarketApi.md#get_mds) | **GET** /mds | Market Days Supply
[**get_popularity**](MarketApi.md#get_popularity) | **GET** /popularity | Popularity
[**get_sales_count**](MarketApi.md#get_sales_count) | **GET** /sales | Get sales count by make, model, year, trim or taxonomy vin
[**get_trends**](MarketApi.md#get_trends) | **GET** /trends | Get Trends for criteria


# **get_averages**
> Averages get_averages(vin, opts)

[MOCK] Get Averages for YMM

[Merged with the /search API - Please check the 'stats' parameter to the Search API above] Get market averages for price / miles / msrp / dom (days on market) fields for active cars matching the given reference VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which averages data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  year: 'year_example', # String | Year of the car
  make: 'make_example', # String | Make of the car
  model: 'model_example', # String | Model of the Car
  trim: 'trim_example', # String | Trim of the Car
  fields: 'fields_example' # String | Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, msrp, dom (days on market)
}

begin
  #[MOCK] Get Averages for YMM
  result = api_instance.get_averages(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_averages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which averages data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **year** | **String**| Year of the car | [optional] 
 **make** | **String**| Make of the car | [optional] 
 **model** | **String**| Model of the Car | [optional] 
 **trim** | **String**| Trim of the Car | [optional] 
 **fields** | **String**| Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, msrp, dom (days on market) | [optional] 

### Return type

[**Averages**](Averages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_comparison**
> ComparisonPoint get_comparison(vin, opts)

Compare market

[MOCK] Get historical market trends for cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which comparison data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Compare market
  result = api_instance.get_comparison(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_comparison: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which comparison data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ComparisonPoint**](ComparisonPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_competition**
> CompetitorsPoint get_competition(vin, opts)

Competitors

[MOCK] Competitor cars in market for current vin

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which competitors data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Competitors
  result = api_instance.get_competition(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_competition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which competitors data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**CompetitorsPoint**](CompetitorsPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_depreciation**
> DepreciationPoint get_depreciation(vin, opts)

Depreciation

[MOCK] Model resale value based on depreciation

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which Depreciation stats is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Depreciation
  result = api_instance.get_depreciation(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_depreciation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which Depreciation stats is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**DepreciationPoint**](DepreciationPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mds**
> Mds get_mds(vin, opts)

Market Days Supply

Get the basic information on specifications for a car identified by a valid VIN

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN to decode

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  exact: false, # BOOLEAN | Exact parameter
  latitude: 1.2, # Float | Latitude component of location
  longitude: 1.2, # Float | Longitude component of location
  radius: 56, # Integer | Radius around the search location
  debug: 0, # Integer | Debug parameter
  include_sold: false # BOOLEAN | To fetch sold vins
}

begin
  #Market Days Supply
  result = api_instance.get_mds(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_mds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN to decode | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **exact** | **BOOLEAN**| Exact parameter | [optional] [default to false]
 **latitude** | **Float**| Latitude component of location | [optional] 
 **longitude** | **Float**| Longitude component of location | [optional] 
 **radius** | **Integer**| Radius around the search location | [optional] 
 **debug** | **Integer**| Debug parameter | [optional] [default to 0]
 **include_sold** | **BOOLEAN**| To fetch sold vins | [optional] [default to false]

### Return type

[**Mds**](Mds.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_popularity**
> Array&lt;PopularityItem&gt; get_popularity(year, make, model, trim, body_type, opts)

Popularity

[MOCK] [Merged with the /search API - Please check the 'popularity' parameter to the Search API above] Get the Popularity for the given simple filter criteria (by given Year, Make, Model, Trim criteria)

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

year = 'year_example' # String | Year of the car

make = 'make_example' # String | Make of the car

model = 'model_example' # String | Model of the Car

trim = 'trim_example' # String | Trim of the Car

body_type = 'body_type_example' # String | Body type to filter the cars on. Valid values are the ones returned by body_type facets API call

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  stats: 'stats_example' # String | The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond.
}

begin
  #Popularity
  result = api_instance.get_popularity(year, make, model, trim, body_type, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_popularity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **String**| Year of the car | 
 **make** | **String**| Make of the car | 
 **model** | **String**| Model of the Car | 
 **trim** | **String**| Trim of the Car | 
 **body_type** | **String**| Body type to filter the cars on. Valid values are the ones returned by body_type facets API call | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **stats** | **String**| The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond. | [optional] 

### Return type

[**Array&lt;PopularityItem&gt;**](PopularityItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sales_count**
> Sales get_sales_count(opts)

Get sales count by make, model, year, trim or taxonomy vin

Get a sales count for city, state or national level by make, model, year, trim or taxonomy vin

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  car_type: 'used', # String | Inventory type for which sales count is to be searched, default is used
  make: 'make_example', # String | Make for which sales count is to be searched
  mm: 'mm_example', # String | Make-Model for which sales count is to be searched, pipe seperated like mm=ford|f-150
  ymm: 'ymm_example', # String | Year-Make-Model for which sales count is to be searched, pipe seperated like ymm=2015|ford|f-150
  ymmt: 'ymmt_example', # String | Year-Make-Model-Trim for which sales count is to be searched, pipe seperated like ymmt=2015|ford|f-150|platinum
  taxonomy_vin: 'taxonomy_vin_example', # String | taxonomy_vin for which sales count is to be searched
  state: 'state_example', # String | State level sales count
  city_state: 'city_state_example', # String | City level sales count, pipe seperated like city_state=jacksonville|FL
  stats: 'stats_example' # String | Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, dom (days on market) OR all
}

begin
  #Get sales count by make, model, year, trim or taxonomy vin
  result = api_instance.get_sales_count(opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_sales_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **car_type** | **String**| Inventory type for which sales count is to be searched, default is used | [optional] [default to used]
 **make** | **String**| Make for which sales count is to be searched | [optional] 
 **mm** | **String**| Make-Model for which sales count is to be searched, pipe seperated like mm&#x3D;ford|f-150 | [optional] 
 **ymm** | **String**| Year-Make-Model for which sales count is to be searched, pipe seperated like ymm&#x3D;2015|ford|f-150 | [optional] 
 **ymmt** | **String**| Year-Make-Model-Trim for which sales count is to be searched, pipe seperated like ymmt&#x3D;2015|ford|f-150|platinum | [optional] 
 **taxonomy_vin** | **String**| taxonomy_vin for which sales count is to be searched | [optional] 
 **state** | **String**| State level sales count | [optional] 
 **city_state** | **String**| City level sales count, pipe seperated like city_state&#x3D;jacksonville|FL | [optional] 
 **stats** | **String**| Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, dom (days on market) OR all | [optional] 

### Return type

[**Sales**](Sales.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_trends**
> Array&lt;TrendPoint&gt; get_trends(vin, car_type, opts)

Get Trends for criteria

Get historical market trends for cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::MarketApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which trend data is to be returned

car_type = 'car_type_example' # String | Car type. Allowed values are - new / used / certified

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  year: 'year_example', # String | Year of the car
  make: 'make_example', # String | Make of the car
  model: 'model_example', # String | Model of the Car
  trim: 'trim_example' # String | Trim of the Car
}

begin
  #Get Trends for criteria
  result = api_instance.get_trends(vin, car_type, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling MarketApi->get_trends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which trend data is to be returned | 
 **car_type** | **String**| Car type. Allowed values are - new / used / certified | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **year** | **String**| Year of the car | [optional] 
 **make** | **String**| Make of the car | [optional] 
 **model** | **String**| Model of the Car | [optional] 
 **trim** | **String**| Trim of the Car | [optional] 

### Return type

[**Array&lt;TrendPoint&gt;**](TrendPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



