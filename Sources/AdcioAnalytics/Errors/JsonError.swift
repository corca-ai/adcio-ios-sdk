//
//  File.swift
//  
//
//  Created by 최민재 on 10/30/23.
//

import Foundation

public enum JsonError: Error {
    case failedParsingJsonError(message: String)
    case noDataAvailable
}
