//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import ControllerV1

public protocol PlacementManageable {
    var sessionID: String { get }
    var deviceID: String { get }
    
    func createAdvertisementProducts(
        clientID: String, excludingProductIDs: [String]?,
        categoryID: String?, placementID: String,
        customerID: String?, fromAgent: Bool,
        baselineProductIDs: [String]?, filters: [[String: ProductFilterOperationDto]]?,
        targets: [SuggestionRequestTarget]?, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createAdvertisementBanners(
        clientID: String, excludingProductIDs: [String]?,
        categoryID: String?, placementID: String,
        customerID: String?, fromAgent: Bool?,
        targets: [SuggestionRequestTarget]?, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationProducts(
        clientID: String, excludingProductIDs: [String]?,
        categoryID: String?, placementID: String,
        customerID: String?, fromAgent: Bool,
        baselineProductIDs: [String]?, filters: [[String: ProductFilterOperationDto]]?,
        targets: [SuggestionRequestTarget]?, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationBanners(
        clientID: String, excludingProductIDs: [String]?,
        categoryID: String?, placementID: String,
        customerID: String?, fromAgent: Bool?,
        targets: [SuggestionRequestTarget]?, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
}

public final class PlacementManager: PlacementManageable {
    private let client: PlacementRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    private var userAgent: String
    private var appVersion: String
    private let sdkVersion = "iOS 1.3.1"
    
    public init(userAgent: String?, appVersion: String) {
        self.client = PlacementClient()
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
        self.userAgent = userAgent ?? ""
        self.appVersion = appVersion
    }
    
    /// create Advertisement Products method
    public func createAdvertisementProducts(
        clientID: String, excludingProductIDs: [String]? = nil,
        categoryID: String? = nil, placementID: String,
        customerID: String? = nil, fromAgent: Bool,
        baselineProductIDs: [String]? = nil, filters: [[String: ProductFilterOperationDto]]? = nil,
        targets: [SuggestionRequestTarget]? = nil, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
            
            client.createAdvertisementProducts(
                ProductSuggestionRequestDto(
                    sessionId: sessionID,
                    deviceId: deviceID,
                    customerId: customerID,
                    sdkVersion: sdkVersion,
                    placementId: placementID,
                    placementPositionX: nil,
                    placementPositionY: nil,
                    fromAgent: fromAgent,
                    clientId: clientID,
                    excludingProductIds: excludingProductIDs,
                    baselineProductIds: baselineProductIDs,
                    categoryId: categoryID,
                    filters: filters,
                    targets: targets,
                    userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                    appVersion: appVersion
                ),
                completion: completion)
        }
    
    /// create Advertisement Banners method
    public func createAdvertisementBanners(
        clientID: String, 
        excludingProductIDs: [String]? = nil,
        categoryID: String? = nil, 
        placementID: String,
        customerID: String? = nil, 
        fromAgent: Bool? = false,
        targets: [SuggestionRequestTarget]? = nil,
        completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void) {
            
            client.createAdvertisementBanners(
                BannerSuggestionRequestDto(
                    sessionId: sessionID,
                    deviceId: deviceID,
                    customerId: customerID,
                    sdkVersion: sdkVersion,
                    placementId: placementID,
                    placementPositionX: nil,
                    placementPositionY: nil,
                    fromAgent: fromAgent,
                    targets: targets,
                    userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                    appVersion: appVersion
                ),
                completion: completion)
        }
    
    /// create Recommendation Products method
    public func createRecommendationProducts(
        clientID: String, 
        excludingProductIDs: [String]? = nil,
        categoryID: String? = nil, 
        placementID: String,
        customerID: String? = nil, 
        fromAgent: Bool,
        baselineProductIDs: [String]? = nil,
        filters: [[String: ProductFilterOperationDto]]? = nil,
        targets: [SuggestionRequestTarget]? = nil,
        completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
            
            client.createRecommendationProducts(
                ProductSuggestionRequestDto(
                    sessionId: sessionID,
                    deviceId: deviceID,
                    customerId: customerID,
                    sdkVersion: sdkVersion,
                    placementId: placementID,
                    placementPositionX: nil,
                    placementPositionY: nil,
                    fromAgent: fromAgent,
                    clientId: clientID,
                    excludingProductIds: excludingProductIDs,
                    baselineProductIds: baselineProductIDs,
                    categoryId: categoryID,
                    filters: filters,
                    targets: targets,
                    userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                    appVersion: appVersion
                ),
                completion: completion)
        }
    
    /// create Recommendation Banners method
    public func createRecommendationBanners(
        clientID: String, 
        excludingProductIDs: [String]? = nil,
        categoryID: String? = nil, 
        placementID: String,
        customerID: String? = nil, 
        fromAgent: Bool? = false,
        targets: [SuggestionRequestTarget]? = nil,
        completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void) {
            
            client.createRecommendationBanners(
                BannerSuggestionRequestDto(
                    sessionId: sessionID,
                    deviceId: deviceID,
                    customerId: customerID,
                    sdkVersion: sdkVersion,
                    placementId: placementID,
                    placementPositionX: nil,
                    placementPositionY: nil,
                    fromAgent: fromAgent,
                    targets: targets,
                    userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                    appVersion: appVersion
                ),
                completion: completion)
        }
}
