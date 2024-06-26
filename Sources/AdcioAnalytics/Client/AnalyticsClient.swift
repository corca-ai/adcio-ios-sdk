//
//  AnalyticsClient.swift
//
//
//  Created by 유현명 on 1/11/24.
//

import Foundation
import Core

public protocol AnalyticsRepogitory {
    var sessionID: SessionID { get }
    var deviceID: String { get }
    
    func onClick(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onImpression(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onPurchase(orderID: String, customerID: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, quantity: Int?, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func onView(customerID: String?, productIDOnStore: String, reqeustID: String?, adsetID: String?, categoryIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onAddToCart(cartID: String?, customerID: String?, productIDOnStore: String?, reqeustID: String?, adsetID: String?, categoryIdOnStore: String?, quantity: Int?, completion: @escaping (AnalyticsResult) -> Void)
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
    
    public func onClick(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["customerId"] = customerID
        parameters["requestId"] = option.requestID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["adsetId"] = option.adsetID
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/events/click"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        apiClient.request(from: url,
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func onImpression(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["customerId"] = customerID
        parameters["requestId"] = option.requestID
        parameters["adsetId"] = option.adsetID
        parameters["productIdOnStore"] = productIDOnStore
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/events/impression"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        apiClient.request(from: url,
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func onPurchase(orderID: String, customerID: String? = nil, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, quantity: Int? = nil, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["orderId"] = orderID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["amount"] = amount
        parameters["customerId"] = customerID
        parameters["requestId"] = requestID
        parameters["adsetId"] = adsetID
        parameters["categoryIdOnStore"] = categoryIDOnStore
        parameters["quantity"] = quantity
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/events/purchase"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        apiClient.request(from: url,
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func onView(customerID: String? = nil, productIDOnStore: String, reqeustID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["customerId"] = customerID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["requestId"] = reqeustID
        parameters["adsetId"] = adsetID
        parameters["categoryIdOnStore"] = categoryIDOnStore
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/events/view"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        apiClient.request(from: url,
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func onAddToCart(cartID: String? = nil, customerID: String? = nil, productIDOnStore: String? = nil, reqeustID: String? = nil, adsetID: String? = nil, categoryIdOnStore: String? = nil, quantity: Int? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["cartId"] = cartID
        parameters["customerId"] = customerID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["reqeustId"] = reqeustID
        parameters["adsetId"] = adsetID
        parameters["categoryIdOnStore"] = categoryIdOnStore
        parameters["quantity"] = quantity
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = baseURL.absoluteString
        components.path = "/events/add-to-cart"
        
        guard let url = components.url?.absoluteURL else {
            return
        }
        
        apiClient.request(from: url,
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    private static func map(_ data: Data, from response: HTTPURLResponse) -> AnalyticsResult {
        do {
            let isSuccess = try AnalyticsMapper.map(data, from: response)
            return .success(isSuccess)
        } catch {
            return .failure(error)
        }
    }
    
    private func makeRequestURL(with baseURL: URL) -> URL? {
        var components = URLComponents()
        components.scheme = baseURL.scheme
        components.host = baseURL.host
        components.path = baseURL.path
        
        guard let url = components.url else { return nil }
        
        return url
    }
}
