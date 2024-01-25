//
//  AnalyticsMapper.swift
//
//
//  Created by 김민식 on 2024/01/25.
//

import Foundation

struct AnalyticsMapper {
    private struct Root: Decodable {
        public let success: Bool
    }
    
    private static var OK_201: Int { return 201 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> Bool {
        guard response.statusCode == OK_201, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw AnalyticsClient.Error.invalidData
        }
        
        return root.success
    }
}
