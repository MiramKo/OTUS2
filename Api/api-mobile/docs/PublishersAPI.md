# PublishersAPI

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**publishersList**](PublishersAPI.md#publisherslist) | **GET** /publishers | Get a list of video game publishers.
[**publishersRead**](PublishersAPI.md#publishersread) | **GET** /publishers/{id} | Get details of the publisher.


# **publishersList**
```swift
    open class func publishersList(page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PublishersList200Response?, _ error: Error?) -> Void)
```

Get a list of video game publishers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of video game publishers.
PublishersAPI.publishersList(page: page, pageSize: pageSize) { (response, error) in
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
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**PublishersList200Response**](PublishersList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishersRead**
```swift
    open class func publishersRead(id: Int, completion: @escaping (_ data: PublisherSingle?, _ error: Error?) -> Void)
```

Get details of the publisher.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this Publisher.

// Get details of the publisher.
PublishersAPI.publishersRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this Publisher. | 

### Return type

[**PublisherSingle**](PublisherSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

