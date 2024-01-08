//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

internal final class PlacementMapper {
    private struct Root: Decodable {
        public let items: [AdcioSuggestion]
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [AdcioSuggestion] {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw PlacementClient.Error.invalidData
        }
        
        return root.items
    }
}
