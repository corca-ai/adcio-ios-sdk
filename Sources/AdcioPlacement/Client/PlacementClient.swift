//
//  File.swift
//
//
//  Created by 유현명 on 1/8/24.
//

import Foundation
import Core

public protocol PlacementRepogitory {
    func adcioCreateSuggestion(
        placementID: String,
        customerID: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool,
        birthYear: Int?,
        gender: Gender?,
        area: String?,
        completion: @escaping (PlacementResult) -> Void
    )
}

public final class PlacementClient: PlacementRepogitory {
    private let url: URL
    private let client: HTTPClient
    private let loader: SessionLoader
    private let deviceID: String
    private var sessionID: String?
    
    public init(
        client: HTTPClient = URLSessionHTTPClient(), 
        loader: SessionLoader = SessionClient.instance,
        deviceID: String = DeviceIDLoader.indentifier,
        url: URL = URL(string: "https://api.adcio.ai/suggestions")!
    ) {
        self.client = client
        self.loader = loader
        self.deviceID = deviceID
        self.url = url
    }
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public func adcioCreateSuggestion(
        placementID: String,
        customerID: String? = nil,
        placementPositionX: Int? = nil,
        placementPositionY: Int? = nil,
        fromAgent: Bool = false,
        birthYear: Int? = nil,
        gender: Gender? = nil,
        area: String? = nil,
        completion: @escaping (PlacementResult) -> Void
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
        
        client.request(from: url,
                       parameter: parameters) { result in
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
