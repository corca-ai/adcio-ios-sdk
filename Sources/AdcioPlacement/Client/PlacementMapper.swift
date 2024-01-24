//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

internal final class PlacementMapper {
    private struct Root: Decodable {
        public let suggestions: [AdcioSuggestion]
    }
    
    private static var OK_200: Int { return 201 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [AdcioSuggestion] {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            print("###6")
            throw PlacementClient.Error.invalidData
        }
        
        return root.suggestions
    }
}
