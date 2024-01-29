//
//  ImpressionManager.swift
//
//
//  Created by 김민식 on 2024/01/16.
//

import Foundation

/*
 1. clear 동작 → Placement
 2. 특정 adSetID가 있는지 검증 동작 반환 (bool) → Analytics
 3. append(adSetID)
 */

public typealias AdSetID = String

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
            print("###clear", self.histores)
        }
    }
    
    public func append(with adSetID: AdSetID) {
        histores.append(adSetID)
        print("###append", self.histores)
    }
    
    public func impressable(with adSetID: AdSetID) -> Bool {
        print("###impressable", histores.contains(adSetID))
        return histores.contains(adSetID)
    }
}
