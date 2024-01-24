//
//  AnalyticsClient.swift
//
//
//  Created by 유현명 on 1/11/24.
//

import Foundation
import Core

public protocol AnalyticsRepogitory {
    func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func pageChanged(path: String, customerID: String?, productIDOnStore: String?, title: String?, referrer: String?, completion: @escaping (AnalyticsResult) -> Void)
    func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void)
}

public class AnalyticsClient: AnalyticsRepogitory {
    
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
                          parameter: parameters) { result in
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
                          parameter: parameters) { result in
            switch result {
            case let .success(data, response):
                completion(AnalyticsClient.map(data, from: response))
            case .failure:
                completion(.failure(AnalyticsClient.Error.connectivity))
            }
        }
    }
    
    public func productPurchased(orderID: String, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["orderId"] = orderID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["amount"] = amount
        parameters["customerId"] = nil
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
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
    
    public func pageChanged(path: String, customerID: String? = nil, productIDOnStore: String? = nil, title: String? = nil, referrer: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["path"] = path
        parameters["customerId"] = customerID
        parameters["productIdOnStore"] = productIDOnStore
        parameters["title"] = title
        parameters["referrer"] = referrer
        
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
    
    public func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionID
        parameters["deviceId"] = deviceID
        parameters["storeId"] = clientID
        parameters["path"] = cartID
        parameters["customerID"] = nil
        parameters["productIdOnStore"] = nil
        
        guard let url = makeRequestURL(with: baseURL) else { return }
        
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
    
    private struct Root: Decodable {
        public let success: Bool
    }
    
    private static var OK_201: Int { return 201 }
    
    private static func map(_ data: Data, from response: HTTPURLResponse) -> AnalyticsResult {
        
        do {
            let isSuccess = try AnalyticsMapper.map(data, from: response)
            return .success(isSuccess)
        } catch {
            return .failure(error)
        }
    }
    
    struct AnalyticsMapper {
        internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> Bool {
            print("#####response", response.statusCode)
            
            guard response.statusCode == OK_201, let root = try? JSONDecoder().decode(Root.self, from: data) else {
                throw AnalyticsClient.Error.invalidData
            }
            
            print("#####")
            return root.success
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
