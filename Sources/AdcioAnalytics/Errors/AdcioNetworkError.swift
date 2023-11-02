//
//  AdcioNetworkError.swift
//
//
//  Created by 최민재 on 10/30/23.
//

import Foundation

public enum AdcioNetworkError: Error {
    case serverError
    case platformError(statusCode: Int, message: String)
    case emptyStatusCodeError(message: String)
}
