//
//  File.swift
//
//
//  Created by 유현명 on 1/8/24.
//

import Foundation
import Core

public final class PlacementClient {
    private let baseUrl = "https://api.adcio.ai/suggestions"
    private let client: HTTPClient
    private let loader: SessionLoader
    private let deviceId: String
    private var sessionId: String?
    
    public init(
        client: HTTPClient, 
        loader: SessionLoader = SessionClient.instance,
        deviceId: String = DeviceIDLoader.indentifier
    ) {
        self.client = client
        self.loader = loader
        self.deviceId = deviceId
    }
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    func adcioCreateSuggestion(
        placementId: String,
        customerId: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool,
        age: String?,
        gender: Gender?,
        area: String?,
        completion: @escaping (PlacementResult) -> Void
    ) {
        var parameters: [String : Any] = [:]
        loader.loadSession { id in
            sessionId = id
        }
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["placementId"] = placementId
        parameters["fromAgent"] = fromAgent
        if customerId != nil { parameters["customerId"] = customerId }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["placementPositionY"] = placementPositionY }
        if age != nil { parameters["age"] = age }
        if gender != nil { parameters["gender"] = gender?.description }
        if area != nil { parameters["area"] = area }
        
        guard let url = URL(string: baseUrl) else { return }
        
        client.request(from: url,
                       parameter: parameters) { [weak self] result in
            switch result {
            case let .success(data, response):
                completion(PlacementClient.map(data, from: response))
            case .failure:
                completion(.failure(PlacementClient.Error.connectivity))
            }
        }
    }
    
    private static func map(_ data: Data, from response: HTTPURLResponse) -> PlacementResult {
        do {
            let items = try PlacementMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
}
