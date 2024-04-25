//
//  File.swift
//
//
//  Created by 유현명 on 1/8/24.
//

import Foundation
import Core

public protocol PlacementRepogitory {
    func adcioAdvertisementsProducts(
        clientID: String,
        excludingProductIDs: [String]?,
        categoryID: String?,
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool,
        birthYear: Int?,
        gender: Gender?,
        area: String?,
        completion: @escaping (AdvertisementProductResult) -> Void
    )
    
    func adcioAdvertisementsBanners(
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool,
        birthYear: Int?,
        gender: Gender?,
        area: String?,
        completion: @escaping (AdvertisementBannerResult) -> Void
    )
}

public final class PlacementClient: PlacementRepogitory {
    private let baseURL: URL
    private let client: HTTPClient
    private let loader: SessionLoader
    private let deviceID: String
    private var sessionID: String?
    
    public init(
        client: HTTPClient = URLSessionHTTPClient(), 
        loader: SessionLoader = SessionClient.instance,
        deviceID: String = DeviceIDLoader.indentifier,
        baseURL: URL = URL(string: "https://api-dev.adcio.ai")!
    ) {
        self.client = client
        self.loader = loader
        self.deviceID = deviceID
        self.baseURL = baseURL
    }
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public func adcioAdvertisementsProducts(
        clientID: String,
        excludingProductIDs: [String]? = nil,
        categoryID: String? = nil,
        placementID: String,
        customerID: String? = nil,
        placementPositionX: Int? = nil,
        placementPositionY: Int? = nil,
        fromAgent: Bool = false,
        birthYear: Int? = nil,
        gender: Gender? = nil,
        area: String? = nil,
        completion: @escaping (AdvertisementProductResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        loader.loadSession { id in
            sessionID = id
        }
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["acementPositionY"] = placementPositionY }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        if area != nil { parameters["area"] = area }
        parameters["clientId"] = clientID
        if area != nil { parameters["area"] = area }
        if excludingProductIDs != nil { parameters["excludingProductIds"] = excludingProductIDs }
        if categoryID != nil { parameters["categoryID"] = categoryID }
        
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
    
    private static func mapWithProduct(_ data: Data, from response: HTTPURLResponse) -> AdvertisementProductResult {
        do {
            let items = try AdvertisementProductMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
    
    public func adcioAdvertisementsBanners(
        placementID: String,
        customerID: String? = nil,
        placementPositionX: Int? = nil,
        placementPositionY: Int? = nil,
        fromAgent: Bool = false,
        birthYear: Int? = nil,
        gender: Gender? = nil,
        area: String? = nil,
        completion: @escaping (AdvertisementBannerResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        loader.loadSession { id in
            sessionID = id
        }
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["placementId"] = placementID
        parameters["fromAgent"] = fromAgent
        if customerID != nil { parameters["customerId"] = customerID }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["acementPositionY"] = placementPositionY }
        if birthYear != nil { parameters["birthYear"] = birthYear }
        if gender != nil { parameters["gender"] = gender?.description }
        if area != nil { parameters["area"] = area }
        if area != nil { parameters["area"] = area }
        
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

    private static func mapWithBanner(_ data: Data, from response: HTTPURLResponse) -> AdvertisementBannerResult {
        do {
            let items = try AdvertisementBannerMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
}
