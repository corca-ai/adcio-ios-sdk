//
//  AnalyticsClient.swift
//
//
//  Created by 유현명 on 1/11/24.
//

import Foundation
import Core
import ReceiverV1

public protocol AnalyticsRepogitory {
    var sessionID: SessionID { get }
    var deviceID: String { get }
    
    func onPurchase(_ purchaseRequest: TrackPurchaseRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (AnalyticsResult) -> Void)
}

public class AnalyticsClient: AnalyticsRepogitory {
    
    private let baseURL: URL
    private let apiClient: HTTPClient
    private let loader: SessionLoader
    public private(set) var deviceID: String
    private let clientID: String
    public private(set) var sessionID: SessionID
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public init(
        clientID: String,
        apiClient: HTTPClient = URLSessionHTTPClient(),
        loader: SessionLoader = SessionClient.instance,
        deviceId: String = DeviceIDLoader.indentifier,
        baseURL: URL = URL(string: "receiver.adcio.ai")!
    ) {
        self.clientID = clientID
        self.apiClient = apiClient
        self.loader = loader
        self.deviceID = deviceId
        self.baseURL = baseURL
        self.sessionID = loader.identifier
    }
    
    public func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        EventsAPI.eventsControllerOnClick(trackClickRequestDto: clickRequestDTO) { result, error in
            guard let error else {
                completion(.failure(AnalyticsClient.Error.invalidData))
                return
            }
            
            completion(.success(result?.success ?? true))
        }
    }
    
    public func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        EventsAPI.eventsControllerOnImpression(trackImpressionRequestDto: impressionRequestDTO) { result, error in
            guard let error else {
                completion(.failure(AnalyticsClient.Error.invalidData))
                return
            }
            
            completion(.success(result?.success ?? true))
        }
    }
    
    public func onPurchase(_ purchaseRequestDTO: TrackPurchaseRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        EventsAPI.eventsControllerOnPurchase(trackPurchaseRequestDto: purchaseRequestDTO) { result, error in
            guard let error else {
                completion(.failure(AnalyticsClient.Error.invalidData))
                return
            }
            
            completion(.success(result?.success ?? true))
        }
    }
    
    public func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        EventsAPI.eventsControllerOnPageView(trackPageViewRequestDto: pageViewRequestDTO) { result, error in
            guard let error else {
                completion(.failure(AnalyticsClient.Error.invalidData))
                return
            }
            
            completion(.success(result?.success ?? true))
        }
    }
    
    public func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        EventsAPI.eventsControllerOnAddToCart(trackAddToCartRequestDto: addToCartRequestDTO) { result, error in
            guard let error else {
                completion(.failure(AnalyticsClient.Error.invalidData))
                return
            }
            
            completion(.success(result?.success ?? true))
        }
    }
}
