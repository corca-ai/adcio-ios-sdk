//
//  File.swift
//
//
//  Created by 유현명 on 1/8/24.
//

import Foundation
import Core

public protocol PlacementRepogitory {
    var sessionID: SessionID { get }
    var deviceID: String { get }
    
    func createAdvertisementProducts(
        clientID: String,
        excludingProductIDs: [String]?,
        categoryID: String?,
        placementID: String,
        customerID: String?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        filters: [String: Filter]?,
        completion: @escaping (PlacementResult) -> Void
    )
    
    func createAdvertisementBanners(
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        completion: @escaping (AdvertisementBannerResult) -> Void
    )
    
    func createRecommendationProducts(
        clientID: String,
        excludingProductIDs: [String]?,
        categoryID: String?,
        placementID: String,
        customerID: String?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        filters: Filter?,
        completion: @escaping (PlacementResult) -> Void
    )
    
    func createRecommendationBanners(
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        completion: @escaping (AdvertisementBannerResult) -> Void
    )
}

public final class PlacementClient: PlacementRepogitory {
    private let baseURL: URL
    private let client: HTTPClient
    private let loader: SessionLoader
    public private(set) var deviceID: String
    public private(set) var sessionID: SessionID
    
    public init(
        client: HTTPClient = URLSessionHTTPClient(),
        loader: SessionLoader = SessionClient.instance,
        deviceID: String = DeviceIDLoader.indentifier,
        baseURL: URL = URL(string: "api.adcio.ai")!
    ) {
        self.client = client
        self.loader = loader
        self.deviceID = deviceID
        self.baseURL = baseURL
        self.sessionID = loader.identifier
    }
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public func createAdvertisementProducts(
        clientID: String,
        excludingProductIDs: [String]? = nil,
        categoryID: String? = nil,
        placementID: String,
        customerID: String? = nil,
        fromAgent: Bool? = false,
        birthYear: Int? = nil,
        gender: Gender? = nil,
        filters: [String: Filter]? = nil,
        completion: @escaping (PlacementResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        parameters["clientId"] = clientID
        if excludingProductIDs != nil { parameters["excludingProductIds"] = excludingProductIDs }
        if categoryID != nil { parameters["categoryId"] = categoryID }
        
        if let filters = filters {
            var filtersArray: [[String: Any]] = []
            for (key, condition) in filters {
                if let equalTo = condition.equalTo {
                    filtersArray.append([key: ["equalTo": equalTo]])
                }
                if let contains = condition.contains {
                    filtersArray.append([key: ["contains": contains]])
                }
                if let `in` = condition.in {
                    filtersArray.append([key: ["in": `in`]])
                }
                if let not = condition.not {
                    filtersArray.append([key: ["not": not]])
                }
            }
            if !filtersArray.isEmpty {
                parameters["filters"] = filtersArray
            }
        }
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/advertisements/products"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        client.request(from: url,
                       parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(PlacementClient.mapWithProduct(data, from: response))
            case .failure:
                completion(.failure(PlacementClient.Error.connectivity))
            }
        }
    }
    
    public func createAdvertisementBanners(
        placementID: String,
        customerID: String? = nil,
        placementPositionX: Int? = nil,
        placementPositionY: Int? = nil,
        fromAgent: Bool? = false,
        birthYear: Int? = nil,
        gender: Gender? = nil,
        completion: @escaping (AdvertisementBannerResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["placementPositionY"] = placementPositionY }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/advertisements/banners"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        client.request(from: url,
                       parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(PlacementClient.mapWithBanner(data, from: response))
            case .failure:
                completion(.failure(PlacementClient.Error.connectivity))
            }
        }
    }
    
    public func createRecommendationProducts(
        clientID: String,
        excludingProductIDs: [String]?,
        categoryID: String?,
        placementID: String,
        customerID: String?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        filters: Filter?,
        completion: @escaping (PlacementResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        parameters["clientId"] = clientID
        if excludingProductIDs != nil { parameters["excludingProductIds"] = excludingProductIDs }
        if categoryID != nil { parameters["categoryId"] = categoryID }
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/recommendations/products"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        client.request(from: url,
                       parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(PlacementClient.mapWithProduct(data, from: response))
            case .failure:
                completion(.failure(PlacementClient.Error.connectivity))
            }
        }
    }
    
    public func createRecommendationBanners(
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool?,
        birthYear: Int?,
        gender: Gender?,
        completion: @escaping (AdvertisementBannerResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["placementPositionY"] = placementPositionY }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/recommendations/banners"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        client.request(from: url,
                       parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(PlacementClient.mapWithBanner(data, from: response))
            case .failure:
                completion(.failure(PlacementClient.Error.connectivity))
            }
        }
    }
    
    private static func mapWithBanner(_ data: Data, from response: HTTPURLResponse) -> AdvertisementBannerResult {
        do {
            let items = try BannersMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
    
    private static func mapWithProduct(_ data: Data, from response: HTTPURLResponse) -> PlacementResult {
        do {
            let items = try ProductsMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
}
