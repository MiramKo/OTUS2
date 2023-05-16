# GamesAPI

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gamesAchievementsRead**](GamesAPI.md#gamesachievementsread) | **GET** /games/{id}/achievements | Get a list of game achievements.
[**gamesAdditionsList**](GamesAPI.md#gamesadditionslist) | **GET** /games/{game_pk}/additions | Get a list of DLC&#39;s for the game, GOTY and other editions, companion apps, etc.
[**gamesDevelopmentTeamList**](GamesAPI.md#gamesdevelopmentteamlist) | **GET** /games/{game_pk}/development-team | Get a list of individual creators that were part of the development team.
[**gamesGameSeriesList**](GamesAPI.md#gamesgameserieslist) | **GET** /games/{game_pk}/game-series | Get a list of games that are part of the same series.
[**gamesList**](GamesAPI.md#gameslist) | **GET** /games | Get a list of games.
[**gamesMoviesRead**](GamesAPI.md#gamesmoviesread) | **GET** /games/{id}/movies | Get a list of game trailers.
[**gamesParentGamesList**](GamesAPI.md#gamesparentgameslist) | **GET** /games/{game_pk}/parent-games | Get a list of parent games for DLC&#39;s and editions.
[**gamesRead**](GamesAPI.md#gamesread) | **GET** /games/{id} | Get details of the game.
[**gamesRedditRead**](GamesAPI.md#gamesredditread) | **GET** /games/{id}/reddit | Get a list of most recent posts from the game&#39;s subreddit.
[**gamesScreenshotsList**](GamesAPI.md#gamesscreenshotslist) | **GET** /games/{game_pk}/screenshots | Get screenshots for the game.
[**gamesStoresList**](GamesAPI.md#gamesstoreslist) | **GET** /games/{game_pk}/stores | Get links to the stores that sell the game.
[**gamesSuggestedRead**](GamesAPI.md#gamessuggestedread) | **GET** /games/{id}/suggested | Get a list of visually similar games, available only for business and enterprise API users.
[**gamesTwitchRead**](GamesAPI.md#gamestwitchread) | **GET** /games/{id}/twitch | Get streams on Twitch associated with the game, available only for business and enterprise API users.
[**gamesYoutubeRead**](GamesAPI.md#gamesyoutuberead) | **GET** /games/{id}/youtube | Get videos from YouTube associated with the game, available only for business and enterprise API users.


# **gamesAchievementsRead**
```swift
    open class func gamesAchievementsRead(id: String, completion: @escaping (_ data: ParentAchievement?, _ error: Error?) -> Void)
```

Get a list of game achievements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get a list of game achievements.
GamesAPI.gamesAchievementsRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**ParentAchievement**](ParentAchievement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesAdditionsList**
```swift
    open class func gamesAdditionsList(gamePk: String, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesList200Response?, _ error: Error?) -> Void)
```

Get a list of DLC's for the game, GOTY and other editions, companion apps, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of DLC's for the game, GOTY and other editions, companion apps, etc.
GamesAPI.gamesAdditionsList(gamePk: gamePk, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesList200Response**](GamesList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesDevelopmentTeamList**
```swift
    open class func gamesDevelopmentTeamList(gamePk: String, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesDevelopmentTeamList200Response?, _ error: Error?) -> Void)
```

Get a list of individual creators that were part of the development team.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of individual creators that were part of the development team.
GamesAPI.gamesDevelopmentTeamList(gamePk: gamePk, ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesDevelopmentTeamList200Response**](GamesDevelopmentTeamList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesGameSeriesList**
```swift
    open class func gamesGameSeriesList(gamePk: String, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesList200Response?, _ error: Error?) -> Void)
```

Get a list of games that are part of the same series.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of games that are part of the same series.
GamesAPI.gamesGameSeriesList(gamePk: gamePk, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesList200Response**](GamesList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesList**
```swift
    open class func gamesList(page: Int? = nil, pageSize: Int? = nil, search: String? = nil, searchPrecise: Bool? = nil, searchExact: Bool? = nil, parentPlatforms: String? = nil, platforms: String? = nil, stores: String? = nil, developers: String? = nil, publishers: String? = nil, genres: String? = nil, tags: String? = nil, creators: String? = nil, dates: String? = nil, updated: String? = nil, platformsCount: Int? = nil, metacritic: String? = nil, excludeCollection: Int? = nil, excludeAdditions: Bool? = nil, excludeParents: Bool? = nil, excludeGameSeries: Bool? = nil, excludeStores: String? = nil, ordering: String? = nil, completion: @escaping (_ data: GamesList200Response?, _ error: Error?) -> Void)
```

Get a list of games.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let search = "search_example" // String | Search query. (optional)
let searchPrecise = true // Bool | Disable fuzziness for the search query. (optional)
let searchExact = true // Bool | Mark the search query as exact. (optional)
let parentPlatforms = "parentPlatforms_example" // String | Filter by parent platforms, for example: `1,2,3`. (optional)
let platforms = "platforms_example" // String | Filter by platforms, for example: `4,5`. (optional)
let stores = "stores_example" // String | Filter by stores, for example: `5,6`. (optional)
let developers = "developers_example" // String | Filter by developers, for example: `1612,18893` or `valve-software,feral-interactive`. (optional)
let publishers = "publishers_example" // String | Filter by publishers, for example: `354,20987` or `electronic-arts,microsoft-studios`. (optional)
let genres = "genres_example" // String | Filter by genres, for example: `4,51` or `action,indie`. (optional)
let tags = "tags_example" // String | Filter by tags, for example: `31,7` or `singleplayer,multiplayer`. (optional)
let creators = "creators_example" // String | Filter by creators, for example: `78,28` or `cris-velasco,mike-morasky`. (optional)
let dates = "dates_example" // String | Filter by a release date, for example: `2010-01-01,2018-12-31.1960-01-01,1969-12-31`. (optional)
let updated = "updated_example" // String | Filter by an update date, for example: `2020-12-01,2020-12-31`. (optional)
let platformsCount = 987 // Int | Filter by platforms count, for example: `1`. (optional)
let metacritic = "metacritic_example" // String | Filter by a metacritic rating, for example: `80,100`. (optional)
let excludeCollection = 987 // Int | Exclude games from a particular collection, for example: `123`. (optional)
let excludeAdditions = true // Bool | Exclude additions. (optional)
let excludeParents = true // Bool | Exclude games which have additions. (optional)
let excludeGameSeries = true // Bool | Exclude games which included in a game series. (optional)
let excludeStores = "excludeStores_example" // String | Exclude stores, for example: `5,6`. (optional)
let ordering = "ordering_example" // String | Available fields: `name`, `released`, `added`, `created`, `updated`, `rating`, `metacritic`. You can reverse the sort order adding a hyphen, for example: `-released`. (optional)

// Get a list of games.
GamesAPI.gamesList(page: page, pageSize: pageSize, search: search, searchPrecise: searchPrecise, searchExact: searchExact, parentPlatforms: parentPlatforms, platforms: platforms, stores: stores, developers: developers, publishers: publishers, genres: genres, tags: tags, creators: creators, dates: dates, updated: updated, platformsCount: platformsCount, metacritic: metacritic, excludeCollection: excludeCollection, excludeAdditions: excludeAdditions, excludeParents: excludeParents, excludeGameSeries: excludeGameSeries, excludeStores: excludeStores, ordering: ordering) { (response, error) in
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
 **search** | **String** | Search query. | [optional] 
 **searchPrecise** | **Bool** | Disable fuzziness for the search query. | [optional] 
 **searchExact** | **Bool** | Mark the search query as exact. | [optional] 
 **parentPlatforms** | **String** | Filter by parent platforms, for example: &#x60;1,2,3&#x60;. | [optional] 
 **platforms** | **String** | Filter by platforms, for example: &#x60;4,5&#x60;. | [optional] 
 **stores** | **String** | Filter by stores, for example: &#x60;5,6&#x60;. | [optional] 
 **developers** | **String** | Filter by developers, for example: &#x60;1612,18893&#x60; or &#x60;valve-software,feral-interactive&#x60;. | [optional] 
 **publishers** | **String** | Filter by publishers, for example: &#x60;354,20987&#x60; or &#x60;electronic-arts,microsoft-studios&#x60;. | [optional] 
 **genres** | **String** | Filter by genres, for example: &#x60;4,51&#x60; or &#x60;action,indie&#x60;. | [optional] 
 **tags** | **String** | Filter by tags, for example: &#x60;31,7&#x60; or &#x60;singleplayer,multiplayer&#x60;. | [optional] 
 **creators** | **String** | Filter by creators, for example: &#x60;78,28&#x60; or &#x60;cris-velasco,mike-morasky&#x60;. | [optional] 
 **dates** | **String** | Filter by a release date, for example: &#x60;2010-01-01,2018-12-31.1960-01-01,1969-12-31&#x60;. | [optional] 
 **updated** | **String** | Filter by an update date, for example: &#x60;2020-12-01,2020-12-31&#x60;. | [optional] 
 **platformsCount** | **Int** | Filter by platforms count, for example: &#x60;1&#x60;. | [optional] 
 **metacritic** | **String** | Filter by a metacritic rating, for example: &#x60;80,100&#x60;. | [optional] 
 **excludeCollection** | **Int** | Exclude games from a particular collection, for example: &#x60;123&#x60;. | [optional] 
 **excludeAdditions** | **Bool** | Exclude additions. | [optional] 
 **excludeParents** | **Bool** | Exclude games which have additions. | [optional] 
 **excludeGameSeries** | **Bool** | Exclude games which included in a game series. | [optional] 
 **excludeStores** | **String** | Exclude stores, for example: &#x60;5,6&#x60;. | [optional] 
 **ordering** | **String** | Available fields: &#x60;name&#x60;, &#x60;released&#x60;, &#x60;added&#x60;, &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;rating&#x60;, &#x60;metacritic&#x60;. You can reverse the sort order adding a hyphen, for example: &#x60;-released&#x60;. | [optional] 

### Return type

[**GamesList200Response**](GamesList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesMoviesRead**
```swift
    open class func gamesMoviesRead(id: String, completion: @escaping (_ data: Movie?, _ error: Error?) -> Void)
```

Get a list of game trailers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get a list of game trailers.
GamesAPI.gamesMoviesRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**Movie**](Movie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesParentGamesList**
```swift
    open class func gamesParentGamesList(gamePk: String, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesList200Response?, _ error: Error?) -> Void)
```

Get a list of parent games for DLC's and editions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get a list of parent games for DLC's and editions.
GamesAPI.gamesParentGamesList(gamePk: gamePk, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesList200Response**](GamesList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesRead**
```swift
    open class func gamesRead(id: String, completion: @escaping (_ data: GameSingle?, _ error: Error?) -> Void)
```

Get details of the game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get details of the game.
GamesAPI.gamesRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**GameSingle**](GameSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesRedditRead**
```swift
    open class func gamesRedditRead(id: String, completion: @escaping (_ data: Reddit?, _ error: Error?) -> Void)
```

Get a list of most recent posts from the game's subreddit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get a list of most recent posts from the game's subreddit.
GamesAPI.gamesRedditRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**Reddit**](Reddit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesScreenshotsList**
```swift
    open class func gamesScreenshotsList(gamePk: String, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesScreenshotsList200Response?, _ error: Error?) -> Void)
```

Get screenshots for the game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get screenshots for the game.
GamesAPI.gamesScreenshotsList(gamePk: gamePk, ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesScreenshotsList200Response**](GamesScreenshotsList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesStoresList**
```swift
    open class func gamesStoresList(gamePk: String, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: GamesStoresList200Response?, _ error: Error?) -> Void)
```

Get links to the stores that sell the game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gamePk = "gamePk_example" // String | 
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

// Get links to the stores that sell the game.
GamesAPI.gamesStoresList(gamePk: gamePk, ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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
 **gamePk** | **String** |  | 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**GamesStoresList200Response**](GamesStoresList200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesSuggestedRead**
```swift
    open class func gamesSuggestedRead(id: String, completion: @escaping (_ data: GameSingle?, _ error: Error?) -> Void)
```

Get a list of visually similar games, available only for business and enterprise API users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get a list of visually similar games, available only for business and enterprise API users.
GamesAPI.gamesSuggestedRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**GameSingle**](GameSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesTwitchRead**
```swift
    open class func gamesTwitchRead(id: String, completion: @escaping (_ data: Twitch?, _ error: Error?) -> Void)
```

Get streams on Twitch associated with the game, available only for business and enterprise API users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get streams on Twitch associated with the game, available only for business and enterprise API users.
GamesAPI.gamesTwitchRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**Twitch**](Twitch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesYoutubeRead**
```swift
    open class func gamesYoutubeRead(id: String, completion: @escaping (_ data: Youtube?, _ error: Error?) -> Void)
```

Get videos from YouTube associated with the game, available only for business and enterprise API users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | An ID or a slug identifying this Game.

// Get videos from YouTube associated with the game, available only for business and enterprise API users.
GamesAPI.gamesYoutubeRead(id: id) { (response, error) in
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
 **id** | **String** | An ID or a slug identifying this Game. | 

### Return type

[**Youtube**](Youtube.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

