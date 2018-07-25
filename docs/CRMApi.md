# Marketcheck_api_sdk::CRMApi

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_check**](CRMApi.md#crm_check) | **GET** /crm_check/{vin} | CRM check of a particular vin


# **crm_check**
> CRMResponse crm_check(vin, sale_date, opts)

CRM check of a particular vin

Check whether particular vin has had a listing after stipulated date or not

### Example
```ruby
# load the gem
require 'Marketcheck_api_sdk'

api_instance = Marketcheck_api_sdk::CRMApi.new

vin = 'vin_example' # String | vin for which CRM check needs to be done

sale_date = 'sale_date_example' # String | sale date after which listing has appeared or not

opts = { 
  api_key: 'api_key_example', # String | The API Authentication Key. Mandatory with all API calls.
}

begin
  #CRM check of a particular vin
  result = api_instance.crm_check(vin, sale_date, opts)
  p result
rescue Marketcheck_api_sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| vin for which CRM check needs to be done | 
 **sale_date** | **String**| sale date after which listing has appeared or not | 
 **api_key** | **String**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**CRMResponse**](CRMResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



