//
//  Banner.swift
//
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

public struct Banner : Codable {
    public let id: String
    public let clientId: String
    public let url: String
    public let name: String
    // public let data: [String : String]
    public let categoryId: String?
    public let productId: String?
    public let activated: Bool
    public let startsAt: String
    public let endsAt: String?
    public let createdAt: String
    public let deletedAt: String?
}
