//
//  APIManager.swift
//  AdcioAnalytics
//
//  Created by 최민재 on 10/25/23.
//

import Foundation
import Alamofire

class APIManager {
    let decoder = JSONDecoder()
    
    static func request(
        _ url: String,
        method: HTTPMethod = .post,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = ["Content-Type": "application/json"],
        encoding: ParameterEncoding = JSONEncoding.default
    ) throws {
        let request = AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        )
                        
        request.responseData { response in
            if case .success(let data) = response.result {
                
                guard let statusCode = response.response?.statusCode else { // TODO: throw
                    throw AdcioNetworkError.unregisteredIdError
                }
                
                // success case
                if [200, 201].contains(statusCode) {
                    return debugPrint("\(Date()) - \(url) : \(method) request success")
                }
                // error case
                if (300...499).contains(statusCode) {
                    var errorData: [String: Any]? = nil
                    
                    do {
                        errorData = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    } catch {
                        throw JsonError.failedParsingJsonError(message: "Json parsing failed.")
                    }
                    
                    // resultJson non-nil
                    guard let errorJson = errorData else {
                        throw JsonError.noDataAvailable
                    }
                    
                    throw AdcioNetworkError.platformError(
                        statusCode: errorJson["statusCode"] as? Int ?? 400,
                        message: errorJson["message"] as? String ?? "Unknown error occured.")
                    
                    debugPrint("\(Date()) - \(url) : \(method) Error request - statusCode(\(statusCode))")
                }
            } else if case .failure(let error) = response.result {
                throw AdcioNetworkError.serverError
            }
        }
        
    }
}
