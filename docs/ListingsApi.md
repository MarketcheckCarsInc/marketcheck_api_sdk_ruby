# Marketcheck_api_sdk::ListingsApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_listing**](ListingsApi.md#get_listing) | **GET** /listing/{id} | Listing by id
[**get_listing_extra**](ListingsApi.md#get_listing_extra) | **GET** /listing/{id}/extra | Long text Listings attributes for Listing with the given id
[**get_listing_media**](ListingsApi.md#get_listing_media) | **GET** /listing/{id}/media | Listing media by id
[**get_listing_vdp**](ListingsApi.md#get_listing_vdp) | **GET** /listing/{id}/vdp | Get listing HTML
[**get_summary_report**](ListingsApi.md#get_summary_report) | **GET** /vin_report_summary | Get Summary Report
[**search**](ListingsApi.md#search) | **GET** /search | Gets active car listings for the given search criteria


# **get_listing**
> Listing get_listing(id, opts)

Listing by id

Get a particular listing by its id

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

id = 'id_example' # String | Listing id to get all the listing attributes

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Listing by id
  result = api_instance.get_listing(id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->get_listing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Listing id to get all the listing attributes | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Listing**](Listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listing_extra**
> ListingExtraAttributes get_listing_extra(id, opts)

Long text Listings attributes for Listing with the given id

Get listing options, features, seller comments

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

id = 'id_example' # String | Listing id to get all the long text listing attributes

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Long text Listings attributes for Listing with the given id
  result = api_instance.get_listing_extra(id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->get_listing_extra: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Listing id to get all the long text listing attributes | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ListingExtraAttributes**](ListingExtraAttributes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listing_media**
> ListingMedia get_listing_media(id, opts)

Listing media by id

Get listing media (photo, photos) by id

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

id = 'id_example' # String | Listing id to get all the listing attributes

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Listing media by id
  result = api_instance.get_listing_media(id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->get_listing_media: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Listing id to get all the listing attributes | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ListingMedia**](ListingMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listing_vdp**
> ListingVDP get_listing_vdp(id, opts)

Get listing HTML

Cached HTML of the Vehicle Details Page (VDP) for the listing. The HTML is cached only for 7 days for all listings. So this API could be used to get HTML of mostly active listings and that have recently expired

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

id = 'id_example' # String | Listing id to get the vehicle details page (VDP) HTML

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  html: 'html_example' # String | Get only HTML for given listings VDP page
}

begin
  #Get listing HTML
  result = api_instance.get_listing_vdp(id, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->get_listing_vdp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Listing id to get the vehicle details page (VDP) HTML | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **html** | **String**| Get only HTML for given listings VDP page | [optional] 

### Return type

[**ListingVDP**](ListingVDP.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_summary_report**
> Array&lt;VinReport&gt; get_summary_report(vin, opts)

Get Summary Report

[MOCK] Generate Summary report

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

vin = 'vin_example' # String | VIN as a reference to the type of car for which Summary data is to be returned

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #Get Summary Report
  result = api_instance.get_summary_report(vin, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->get_summary_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| VIN as a reference to the type of car for which Summary data is to be returned | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Array&lt;VinReport&gt;**](VinReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search**
> SearchResponse search(opts)

Gets active car listings for the given search criteria

This endpoint is the meat of the API and serves many purposes. This API produces a list of currently active cars from the market for the given search criteria. The API results are limited to allow pagination upto 1000 rows.   The search API facilitates the following use cases -  1. Search Cars around a given geo-point within a given radius  2. Search cars for a specific year / make / model or combination of these  3. Search cars matching multiple year, make, model combinatins in the same search request 4. Filter results by most car specification attributes 5. Search for similar cars by VIN or Taxonomy VIN  6. Filter cars within a given price / miles / days on market (dom) range 7. Specify a sort order for the results on price / miles / dom / listed date  8. Search cars for a given City / State combination  9. Get Facets to build the search drill downs  10. Get Market averages for price/miles/dom/msrp for your search

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::ListingsApi.new

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
  latitude: 1.2, # Float | Latitude component of location
  longitude: 1.2, # Float | Longitude component of location
  radius: 56, # Integer | Radius around the search location
  zip: 'zip_example', # String | car search bases on zipcode
  include_lease: true, # BOOLEAN | Boolean param to search for listings that include leasing options in them
  include_finance: true, # BOOLEAN | Boolean param to search for listings that include finance options in them
  lease_term: 'lease_term_example', # String | Search listings with exact lease term, or inside a range with min and max seperated by a dash like lease_term=30-60
  lease_down_payment: 'lease_down_payment_example', # String | Search listings with exact down payment in lease offers, or inside a range with min and max seperated by a dash like lease_down_payment=30-60
  lease_emp: 'lease_emp_example', # String | Search listings with lease offers exactly matching Estimated Monthly Payment(EMI), or inside a range with min and max seperated by a dash like lease_emp=30-60
  finance_loan_term: 'finance_loan_term_example', # String | Search listings with exact finance loan term, or inside a range with min and max seperated by a dash like finance_loan_term=30-60
  finance_loan_apr: 'finance_loan_apr_example', # String | Search listings with finance offers exactly matching loans Annual Percentage Rate, or inside a range with min and max seperated by a dash like finance_loan_apr=30-60
  finance_emp: 'finance_emp_example', # String | Search listings with finance offers exactly matching Estimated Monthly Payment(EMI), or inside a range with min and max seperated by a dash like finance_emp=30-60
  finance_down_payment: 'finance_down_payment_example', # String | Search listings with exact down payment in finance offers, or inside a range with min and max seperated by a dash like finance_down_payment=30-60
  finance_down_payment_per: 'finance_down_payment_per_example', # String | Search listings with exact down payment percentage in finance offers, or inside a range with min and max seperated by a dash like finance_down_payment_per=30-60
  car_type: 'car_type_example', # String | Car type. Allowed values are - new / used / certified
  seller_type: 'seller_type_example', # String | Seller type to filter cars on. Valid filter values are those that our Search facets API returns for unique seller types. You can pass in multiple seller type values comma separated.
  carfax_1_owner: 'carfax_1_owner_example', # String | Indicates whether car has had only one owner or not
  carfax_clean_title: 'carfax_clean_title_example', # String | Indicates whether car has clean ownership records
  year: 'year_example', # String | Car year - 1980 onwards. Valid filter values are those that our Search facets API returns for unique years. You can pass in multiple year values comma separated.
  make: 'make_example', # String | Car Make - should be a standard OEM Make name. Valid filter values are those that our Search facets API returns for unique make. You can pass in multiple make values separated by comma. e.g. ford,audi
  model: 'model_example', # String | Car model to search. Valid filter values are those that our Search facets API returns for unique model. You can pass in multiple model values comma separated for e.g f-150,Mustang.
  trim: 'trim_example', # String | Car trim to search. Valid filter values are those that our Search facets API returns for unique trim. You can pass in multiple trim values comma separated
  dealer_id: 'dealer_id_example', # String | Dealer id to filter the cars.
  vin: 'vin_example', # String | Car vin to search
  source: 'source_example', # String | Source to search cars. Valid filter values are those that our Search facets API returns for unique source. You can pass in multiple source values comma separated
  body_type: 'body_type_example', # String | Body type to filter the cars on. Valid filter values are those that our Search facets API returns for unique body types. You can pass in multiple body types comma separated.
  body_subtype: 'body_subtype_example', # String | Body subtype to filter the cars on. Valid filter values are those that our Search facets API returns for unique body subtypes. You can pass in multiple body subtype values comma separated
  vehicle_type: 'vehicle_type_example', # String | Vehicle type to filter the cars on. Valid filter values are those that our Search facets API returns for unique vehicle types. You can pass in multiple vehicle type values comma separated
  vins: 'vins_example', # String | Comma separated list of 17 digit vins to search the matching cars for. Only 10 VINs allowed per request. If the request contains more than 10 VINs the first 10 VINs will be considered. Could be used as a More Like This or Similar Vehicles search for the given VINs. Ths vins parameter is an alternative to taxonomy_vins or ymmt parameters available with the search API. vins and taxonomy_vins parameters could be used to filter our cars with the exact build represented by the vins or taxonomy_vins whereas ymmt is a top level filter that does not filter cars by the build attributes like doors, drivetrain, cylinders, body type, body subtype, vehicle type etc
  taxonomy_vins: 'taxonomy_vins_example', # String | Comma separated list of 10 letters excert from the 17 letter VIN. The 10 letters to be picked up from the 17 letter VIN are - first 8 letters and the 10th and 11th letter. E.g. For a VIN - 1FTFW1EF3EKE57182 the taxonomy vin would be - 1FTFW1EFEK  A taxonomy VIN identified a build of a car and could be used to filter our cars of a particular build. This is an alternative to the vin or ymmt parameters to the search API.
  ymmt: 'ymmt_example', # String | Comma separated list of Year, Make, Model, Trim combinations. Each combination needs to have the year,make,model, trim values separated by a pipe '|' character in the form year|make|model|trim. e.g. 2010|Audi|A5,2014|Nissan|Sentra|S 6MT,|Honda|City|   You could just provide strings of the form - 'year|make||' or 'year|make|model' or '|make|model|' combinations. Individual year / make / model filters provied with the API calls will take precedence over the Year, Make, Model, Trim combinations. The Make, Model, Trim values must be valid values as per the Marketcheck Vin Decoder. If you are using a separate vin decoder then look at using the 'vins' or 'taxonomy_vins' parameter to the search api instead the year|make|model|trim combinations.
  match: 'match_example', # String | Comma separated list of Year, Make, Model, Trim fields. For example - year,make,model,trim fields for which user wants to do an exact match
  cylinders: 'cylinders_example', # String | Cylinders to filter the cars on. Valid filter values are those that our Search facets API returns for unique cylinder values. You can pass in multiple cylinder values comma separated
  transmission: 'transmission_example', # String | Transmission to filter the cars on. [a = Automatic, m = Manual]. Valid filter values are those that our Search facets API returns for unique transmission. You can pass in multiple transmission values comma separated
  speeds: 'speeds_example', # String | Speeds to filter the cars on. Valid filter values are those that our Search facets API returns for unique speeds. You can pass in multiple speeds values comma separated
  doors: 'doors_example', # String | Doors to filter the cars on. Valid filter values are those that our Search facets API returns for unique doors. You can pass in multiple doors values comma separated
  drivetrain: 'drivetrain_example', # String | Drivetrain to filter the cars on. Valid filter values are those that our Search facets API returns for unique drivetrains. You can pass in multiple drivetrain values comma separated
  exterior_color: 'exterior_color_example', # String | Exterior color to match. Valid filter values are those that our Search facets API returns for unique exterior colors. You can pass in multiple exterior color values comma separated
  interior_color: 'interior_color_example', # String | Interior color to match. Valid filter values are those that our Search facets API returns for unique interior colors. You can pass in multiple interior color values comma separated
  engine: 'engine_example', # String | Filter listings on engine
  engine_type: 'engine_type_example', # String | Engine Type to match. Valid filter values are those that our Search facets API returns for unique engine types. You can pass in multiple engine type values comma separated
  engine_aspiration: 'engine_aspiration_example', # String | Engine Aspiration to match. Valid filter values are those that our Search facets API returns for unique Engine Aspirations. You can pass in multiple Engine aspirations values comma separated
  engine_block: 'engine_block_example', # String | Engine Block to match. Valid filter values are those that our Search facets API returns for unique Engine Block. You can pass in multiple Engine Block values comma separated
  miles_range: 'miles_range_example', # String | Miles range to filter cars with miles in the given range. Range to be given in the format - min-max e.g. 1000-5000
  price_range: 'price_range_example', # String | Price range to filter cars with the price in the range given. Range to be given in the format - min-max e.g. 1000-5000
  dom_range: 'dom_range_example', # String | Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
  sort_by: 'sort_by_example', # String | Sort by field - allowed fields are distance|price|miles|dom|age|posted_at|year. Default sort field is distance from the given point
  sort_order: 'sort_order_example', # String | Sort order - asc or desc. Default sort order is distance from a point.
  rows: 'rows_example', # String | Number of results to return. Default is 10. Max is 50
  start: 'start_example', # String | Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows
  facets: 'facets_example', # String | The comma separated list of fields for which facets are requested. Supported fields are - year, make, model, trim, vehicle_type, car_type, body_type, body_subtype, drivetrain, cylinders, transmission, exterior_color, interior_color, doors, engine_type, engine_aspiration, engine_block. Facets could be requested in addition to the listings for the search. Please note - The API calls with lots of facet fields may take longer to respond.
  stats: 'stats_example', # String | The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond.
  country: 'country_example', # String | Filter on Country, by default US. Search available on US (United States) and CA (Canada)
  plot: 'plot_example', # String | If plot has value true results in around 25k coordinates with limited fields to plot respective graph
  nodedup: true, # BOOLEAN | If nodedup is set to true then will give results without is_searchable i.e multiple listings for single vin
  state: 'state_example', # String | Filter listsings on State
  city: 'city_example', # String | Filter listings on city
  dealer_name: 'dealer_name_example', # String | Filter listings on dealer_name
  trim_o: 'trim_o_example', # String | Filter listings on web scraped trim
  trim_r: 'trim_r_example', # String | Filter trim on custom possible matches
  dom_active_range: 'dom_active_range_example', # String | Active Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
  dom_180_range: 'dom_180_range_example', # String | Last 180 Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
  options: 'options_example', # String | Tokenizer search on options for multiple options use | as seperator
  features: 'features_example', # String | Tokenizer search on features for multiple options use | as seperator
  exclude_certified: true # BOOLEAN | Boolean param to exclude certified cars from search results
}

begin
  #Gets active car listings for the given search criteria
  result = api_instance.search(opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling ListingsApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **latitude** | **Float**| Latitude component of location | [optional] 
 **longitude** | **Float**| Longitude component of location | [optional] 
 **radius** | **Integer**| Radius around the search location | [optional] 
 **zip** | **String**| car search bases on zipcode | [optional] 
 **include_lease** | **BOOLEAN**| Boolean param to search for listings that include leasing options in them | [optional] 
 **include_finance** | **BOOLEAN**| Boolean param to search for listings that include finance options in them | [optional] 
 **lease_term** | **String**| Search listings with exact lease term, or inside a range with min and max seperated by a dash like lease_term&#x3D;30-60 | [optional] 
 **lease_down_payment** | **String**| Search listings with exact down payment in lease offers, or inside a range with min and max seperated by a dash like lease_down_payment&#x3D;30-60 | [optional] 
 **lease_emp** | **String**| Search listings with lease offers exactly matching Estimated Monthly Payment(EMI), or inside a range with min and max seperated by a dash like lease_emp&#x3D;30-60 | [optional] 
 **finance_loan_term** | **String**| Search listings with exact finance loan term, or inside a range with min and max seperated by a dash like finance_loan_term&#x3D;30-60 | [optional] 
 **finance_loan_apr** | **String**| Search listings with finance offers exactly matching loans Annual Percentage Rate, or inside a range with min and max seperated by a dash like finance_loan_apr&#x3D;30-60 | [optional] 
 **finance_emp** | **String**| Search listings with finance offers exactly matching Estimated Monthly Payment(EMI), or inside a range with min and max seperated by a dash like finance_emp&#x3D;30-60 | [optional] 
 **finance_down_payment** | **String**| Search listings with exact down payment in finance offers, or inside a range with min and max seperated by a dash like finance_down_payment&#x3D;30-60 | [optional] 
 **finance_down_payment_per** | **String**| Search listings with exact down payment percentage in finance offers, or inside a range with min and max seperated by a dash like finance_down_payment_per&#x3D;30-60 | [optional] 
 **car_type** | **String**| Car type. Allowed values are - new / used / certified | [optional] 
 **seller_type** | **String**| Seller type to filter cars on. Valid filter values are those that our Search facets API returns for unique seller types. You can pass in multiple seller type values comma separated. | [optional] 
 **carfax_1_owner** | **String**| Indicates whether car has had only one owner or not | [optional] 
 **carfax_clean_title** | **String**| Indicates whether car has clean ownership records | [optional] 
 **year** | **String**| Car year - 1980 onwards. Valid filter values are those that our Search facets API returns for unique years. You can pass in multiple year values comma separated. | [optional] 
 **make** | **String**| Car Make - should be a standard OEM Make name. Valid filter values are those that our Search facets API returns for unique make. You can pass in multiple make values separated by comma. e.g. ford,audi | [optional] 
 **model** | **String**| Car model to search. Valid filter values are those that our Search facets API returns for unique model. You can pass in multiple model values comma separated for e.g f-150,Mustang. | [optional] 
 **trim** | **String**| Car trim to search. Valid filter values are those that our Search facets API returns for unique trim. You can pass in multiple trim values comma separated | [optional] 
 **dealer_id** | **String**| Dealer id to filter the cars. | [optional] 
 **vin** | **String**| Car vin to search | [optional] 
 **source** | **String**| Source to search cars. Valid filter values are those that our Search facets API returns for unique source. You can pass in multiple source values comma separated | [optional] 
 **body_type** | **String**| Body type to filter the cars on. Valid filter values are those that our Search facets API returns for unique body types. You can pass in multiple body types comma separated. | [optional] 
 **body_subtype** | **String**| Body subtype to filter the cars on. Valid filter values are those that our Search facets API returns for unique body subtypes. You can pass in multiple body subtype values comma separated | [optional] 
 **vehicle_type** | **String**| Vehicle type to filter the cars on. Valid filter values are those that our Search facets API returns for unique vehicle types. You can pass in multiple vehicle type values comma separated | [optional] 
 **vins** | **String**| Comma separated list of 17 digit vins to search the matching cars for. Only 10 VINs allowed per request. If the request contains more than 10 VINs the first 10 VINs will be considered. Could be used as a More Like This or Similar Vehicles search for the given VINs. Ths vins parameter is an alternative to taxonomy_vins or ymmt parameters available with the search API. vins and taxonomy_vins parameters could be used to filter our cars with the exact build represented by the vins or taxonomy_vins whereas ymmt is a top level filter that does not filter cars by the build attributes like doors, drivetrain, cylinders, body type, body subtype, vehicle type etc | [optional] 
 **taxonomy_vins** | **String**| Comma separated list of 10 letters excert from the 17 letter VIN. The 10 letters to be picked up from the 17 letter VIN are - first 8 letters and the 10th and 11th letter. E.g. For a VIN - 1FTFW1EF3EKE57182 the taxonomy vin would be - 1FTFW1EFEK  A taxonomy VIN identified a build of a car and could be used to filter our cars of a particular build. This is an alternative to the vin or ymmt parameters to the search API. | [optional] 
 **ymmt** | **String**| Comma separated list of Year, Make, Model, Trim combinations. Each combination needs to have the year,make,model, trim values separated by a pipe &#39;|&#39; character in the form year|make|model|trim. e.g. 2010|Audi|A5,2014|Nissan|Sentra|S 6MT,|Honda|City|   You could just provide strings of the form - &#39;year|make||&#39; or &#39;year|make|model&#39; or &#39;|make|model|&#39; combinations. Individual year / make / model filters provied with the API calls will take precedence over the Year, Make, Model, Trim combinations. The Make, Model, Trim values must be valid values as per the Marketcheck Vin Decoder. If you are using a separate vin decoder then look at using the &#39;vins&#39; or &#39;taxonomy_vins&#39; parameter to the search api instead the year|make|model|trim combinations. | [optional] 
 **match** | **String**| Comma separated list of Year, Make, Model, Trim fields. For example - year,make,model,trim fields for which user wants to do an exact match | [optional] 
 **cylinders** | **String**| Cylinders to filter the cars on. Valid filter values are those that our Search facets API returns for unique cylinder values. You can pass in multiple cylinder values comma separated | [optional] 
 **transmission** | **String**| Transmission to filter the cars on. [a &#x3D; Automatic, m &#x3D; Manual]. Valid filter values are those that our Search facets API returns for unique transmission. You can pass in multiple transmission values comma separated | [optional] 
 **speeds** | **String**| Speeds to filter the cars on. Valid filter values are those that our Search facets API returns for unique speeds. You can pass in multiple speeds values comma separated | [optional] 
 **doors** | **String**| Doors to filter the cars on. Valid filter values are those that our Search facets API returns for unique doors. You can pass in multiple doors values comma separated | [optional] 
 **drivetrain** | **String**| Drivetrain to filter the cars on. Valid filter values are those that our Search facets API returns for unique drivetrains. You can pass in multiple drivetrain values comma separated | [optional] 
 **exterior_color** | **String**| Exterior color to match. Valid filter values are those that our Search facets API returns for unique exterior colors. You can pass in multiple exterior color values comma separated | [optional] 
 **interior_color** | **String**| Interior color to match. Valid filter values are those that our Search facets API returns for unique interior colors. You can pass in multiple interior color values comma separated | [optional] 
 **engine** | **String**| Filter listings on engine | [optional] 
 **engine_type** | **String**| Engine Type to match. Valid filter values are those that our Search facets API returns for unique engine types. You can pass in multiple engine type values comma separated | [optional] 
 **engine_aspiration** | **String**| Engine Aspiration to match. Valid filter values are those that our Search facets API returns for unique Engine Aspirations. You can pass in multiple Engine aspirations values comma separated | [optional] 
 **engine_block** | **String**| Engine Block to match. Valid filter values are those that our Search facets API returns for unique Engine Block. You can pass in multiple Engine Block values comma separated | [optional] 
 **miles_range** | **String**| Miles range to filter cars with miles in the given range. Range to be given in the format - min-max e.g. 1000-5000 | [optional] 
 **price_range** | **String**| Price range to filter cars with the price in the range given. Range to be given in the format - min-max e.g. 1000-5000 | [optional] 
 **dom_range** | **String**| Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **sort_by** | **String**| Sort by field - allowed fields are distance|price|miles|dom|age|posted_at|year. Default sort field is distance from the given point | [optional] 
 **sort_order** | **String**| Sort order - asc or desc. Default sort order is distance from a point. | [optional] 
 **rows** | **String**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **String**| Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows | [optional] 
 **facets** | **String**| The comma separated list of fields for which facets are requested. Supported fields are - year, make, model, trim, vehicle_type, car_type, body_type, body_subtype, drivetrain, cylinders, transmission, exterior_color, interior_color, doors, engine_type, engine_aspiration, engine_block. Facets could be requested in addition to the listings for the search. Please note - The API calls with lots of facet fields may take longer to respond. | [optional] 
 **stats** | **String**| The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond. | [optional] 
 **country** | **String**| Filter on Country, by default US. Search available on US (United States) and CA (Canada) | [optional] 
 **plot** | **String**| If plot has value true results in around 25k coordinates with limited fields to plot respective graph | [optional] 
 **nodedup** | **BOOLEAN**| If nodedup is set to true then will give results without is_searchable i.e multiple listings for single vin | [optional] 
 **state** | **String**| Filter listsings on State | [optional] 
 **city** | **String**| Filter listings on city | [optional] 
 **dealer_name** | **String**| Filter listings on dealer_name | [optional] 
 **trim_o** | **String**| Filter listings on web scraped trim | [optional] 
 **trim_r** | **String**| Filter trim on custom possible matches | [optional] 
 **dom_active_range** | **String**| Active Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **dom_180_range** | **String**| Last 180 Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **options** | **String**| Tokenizer search on options for multiple options use | as seperator | [optional] 
 **features** | **String**| Tokenizer search on features for multiple options use | as seperator | [optional] 
 **exclude_certified** | **BOOLEAN**| Boolean param to exclude certified cars from search results | [optional] 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



