# CreatorRolesAPI

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creatorRolesList**](CreatorRolesAPI.md#creatorroleslist) | **GET** /creator-roles | Get a list of creator positions (jobs).


# **creatorRolesList**
```swift
    open class func creatorRolesList(page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: CreatorRolesList200Response?, _ error: Error?) -> Void)
```

Get a list of creator positions (jobs).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of creator positions (jobs).
CreatorRolesAPI.creatorRolesList(page: page, pageSize: pageSize) { (response, error) in
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

[**CreatorRolesList200Response**](CreatorRolesList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

