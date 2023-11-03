//
//  JsonError.swift
//  
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

public enum JsonError: Error {
    case failedParsingJsonError(message: String)
    case noDataAvailable(message: String)
}
