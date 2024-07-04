//
//  AnalyticsClient.swift
//
//
//  Created by 유현명 on 1/11/24.
//

import Foundation
import ReceiverV1
import Core

public protocol AnalyticsRepogitory {
    var sessionID: SessionID { get }
    var deviceID: String { get }
    
    func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onPurchase(_ purchaseRequestDTO: TrackPurchaseRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void)
}

public class AnalyticsClient: AnalyticsRepogitory {
    private let apiClient: HTTPClient
    private let loader: SessionLoader
    public private(set) var deviceID: String
    private let clientID: String
    public private(set) var sessionID: SessionID
    
    public init(
        clientID: String,
        apiClient: HTTPClient = URLSessionHTTPClient(),
        loader: SessionLoader = SessionClient.instance,
        deviceId: String = DeviceIDLoader.indentifier
    ) {
        self.clientID = clientID
        self.apiClient = apiClient
        self.loader = loader
        self.deviceID = deviceId
        self.sessionID = loader.identifier
    }
    
    public func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        EventsAPI.eventsControllerOnClick(trackClickRequestDto: clickRequestDTO) { result, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            completion(result, nil)
        }
    }
    
    public func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        EventsAPI.eventsControllerOnImpression(trackImpressionRequestDto: impressionRequestDTO) { result, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            completion(result, nil)
        }
    }
    
    public func onPurchase(_ purchaseRequestDTO: TrackPurchaseRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        EventsAPI.eventsControllerOnPurchase(trackPurchaseRequestDto: purchaseRequestDTO) { result, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            completion(result, nil)
        }
    }
    
    public func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        EventsAPI.eventsControllerOnPageView(trackPageViewRequestDto: pageViewRequestDTO) { result, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            completion(result, nil)
        }
    }
    
    public func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        EventsAPI.eventsControllerOnAddToCart(trackAddToCartRequestDto: addToCartRequestDTO) { result, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            completion(result, nil)
        }
    }
}
