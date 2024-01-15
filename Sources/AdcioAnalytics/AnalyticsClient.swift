//
//  AnalyticsClient.swift
//  
//
//  Created by 유현명 on 1/11/24.
//

import Foundation
import Core

public class AnalyticsClient: AdcioAnalyzable {
    
    private let baseURL: URL
    private let apiClient: HTTPClient
    private let loader: SessionLoader
    private let deviceID: String
    private var sessionID: String?
    private let clientID: String
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public init(
        clientID: String,
        apiClient: HTTPClient,
        loader: SessionLoader = SessionClient.instance,
        deviceId: String = DeviceIDLoader.indentifier,
        baseURL: URL = URL(string: "https://receiver.adcio.ai/")!
    ) {
        self.clientID = clientID
        self.apiClient = apiClient
        self.loader = loader
        self.deviceID = deviceId
        self.baseURL = baseURL
    }
    
   public func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["customerId"] = nil
        parameters["requestId"] = option.requestID
        parameters["adsetId"] = option.adsetID
        
       var components = URLComponents()
       components.host = baseURL.absoluteString
       components.path = "performance/click"
       
       guard let url = components.url else { return }
       
        apiClient.request(from: url,
                       parameter: parameters) { [weak self] result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["customerId"] = nil
        parameters["requestId"] = option.requestID
        parameters["adsetId"] = option.adsetID
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
        apiClient.request(from: url,
                       parameter: parameters) { [weak self] result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func productPurchased(orderID: String, productIdOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["orderId"] = orderID
        parameters["productIdOnStore"] = productIdOnStore
        parameters["amount"] = amount
        parameters["customerId"] = nil
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
        apiClient.request(from: url,
                       parameter: parameters) { [weak self] result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func pageChanged(path: String, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["path"] = path
        parameters["customerID"] = nil
        parameters["productIdOnStore"] = nil
        parameters["title"] = nil
        parameters["referrer"] = nil
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
        apiClient.request(from: url,
                       parameter: parameters) { [weak self] result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func addToCart(cartId: String, productIdOnStore: String, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["path"] = cartId
        parameters["customerID"] = nil
        parameters["productIdOnStore"] = nil
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
        apiClient.request(from: url,
                       parameter: parameters) { [weak self] result in
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
            return .success(true)
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

protocol AdcioAnalyzable {
    func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String, productIdOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func pageChanged(path: String, completion: @escaping (AnalyticsResult) -> Void)
    func addToCart(cartId: String, productIdOnStore: String, completion: @escaping (AnalyticsResult) -> Void)
}
