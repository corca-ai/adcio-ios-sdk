//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

internal final class ProductsMapper {
    private struct Root: Decodable {
        public let adcioSuggestionRawData: AdcioSuggestionRawData
    }
    
    private static var OK_201: Int { return 201 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> AdcioSuggestionRawData {
        
        guard response.statusCode == OK_201,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw PlacementClient.Error.invalidData
        }
        
        return root.adcioSuggestionRawData
    }
}

internal final class BannersMapper {
    private struct Root: Decodable {
        public let suggestions: [AdvertisementBanner]
    }
    
    private static var OK_201: Int { return 201 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [AdvertisementBanner] {
        
        guard response.statusCode == OK_201,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw PlacementClient.Error.invalidData
        }
        
        return root.suggestions
    }
}
