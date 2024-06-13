//
//  ImpressionManager.swift
//
//
//  Created by 김민식 on 2024/01/16.
//

import Foundation

public typealias AdSetID = String

public enum ImpressionType {
    case advertisementProducts
    case advertisementBannders
    case recommendationProducts
    case recommendationBannders
}

public protocol ImpressionManageable {
    func clear()
    func append(with adSetID: AdSetID)
    func impressable(with adSetID: AdSetID) -> Bool
}

public final class ImpressionManager: ImpressionManageable {
    public static let instance = ImpressionManager()
    
    private var histores: [AdSetID]
    
    public init() {
        self.histores = []
    }
    
    public func clear() {
        if !histores.isEmpty {
            histores.removeAll()
        }
    }
    
    public func append(with adSetID: AdSetID) {
        histores.append(adSetID)
    }
    
    public func impressable(with adSetID: AdSetID) -> Bool {
        return histores.contains(adSetID)
    }
}
