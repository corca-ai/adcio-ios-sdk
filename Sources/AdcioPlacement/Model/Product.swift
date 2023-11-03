//
//  Product.swift
//
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

public struct Product : Codable {
    public let id: String
    public let idOnStore: String
    public let storeId: String
    public let sellerId: String
    public let name: String
    public let price: Int
    public let description: String
    public let image: String
    public let includeInRecommendation: Bool
    // FIXME: data 타입 커버
    // public let data: [String : String]
    public let url: String?
    public let deepLink: String?
    public let caption: String?
    public let createdAt: String
    public let updatedAt: String
}
