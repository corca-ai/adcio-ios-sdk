//
//  SessionIdClient.swift
//
//
//  Created by 유현명 on 12/27/23.
//

import Foundation

public typealias SessionID = String

public protocol SessionLoader {
//    func loadSession(completion: ((SessionID) -> Void))
    var identifier: SessionID { get }
}

public final class SessionClient: SessionLoader {
    public static let instance = SessionClient()
    public private(set) var identifier: String
    
    public init() {
        self.identifier = UUID().uuidString
        print("UUID",self.identifier)
    }
    
    public func loadSession(completion: ((SessionID) -> Void)) {
        completion(identifier)
    }
}
