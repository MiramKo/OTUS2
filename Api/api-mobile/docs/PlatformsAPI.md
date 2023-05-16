# PlatformsAPI

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**platformsList**](PlatformsAPI.md#platformslist) | **GET** /platforms | Get a list of video game platforms.
[**platformsListsParentsList**](PlatformsAPI.md#platformslistsparentslist) | **GET** /platforms/lists/parents | Get a list of parent platforms.
[**platformsRead**](PlatformsAPI.md#platformsread) | **GET** /platforms/{id} | Get details of the platform.


# **platformsList**
```swift
    open class func platformsList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PlatformsList200Response?, _ error: Error?) -> Void)
```

Get a list of video game platforms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of video game platforms.
PlatformsAPI.platformsList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**PlatformsList200Response**](PlatformsList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformsListsParentsList**
```swift
    open class func platformsListsParentsList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PlatformsListsParentsList200Response?, _ error: Error?) -> Void)
```

Get a list of parent platforms.

For instance, for PS2 and PS4 the “parent platform” is PlayStation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of parent platforms.
PlatformsAPI.platformsListsParentsList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**PlatformsListsParentsList200Response**](PlatformsListsParentsList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformsRead**
```swift
    open class func platformsRead(id: Int, completion: @escaping (_ data: PlatformSingle?, _ error: Error?) -> Void)
```

Get details of the platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this Platform.

// Get details of the platform.
PlatformsAPI.platformsRead(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | A unique integer value identifying this Platform. | 

### Return type

[**PlatformSingle**](PlatformSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

