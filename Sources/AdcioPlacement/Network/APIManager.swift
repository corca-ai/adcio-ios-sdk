//
//  File.swift
//  
//
//  Created by 최민재 on 11/2/23.
//

import Foundation
import Alamofire

class APIManager {
    static func request(
        _ url: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = ["Content-Type": "application/json"],
        encoding: ParameterEncoding = JSONEncoding.default,
        completion: @escaping (Result<Data, Error>) -> Void
    )  {
        let request = AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        )
                        
        request.responseData { response in
            if case .success(let data) = response.result {
                
                guard let statusCode = response.response?.statusCode else {
                    completion(.failure(AdcioNetworkError.emptyStatusCodeError(message: "Unkown statusCode")))
                    return
                }
                
                // success case
                if [200, 201].contains(statusCode) {
                    completion(.success(data))
                    debugPrint("\(Date()) - \(url) : \(method) request success")
                    return
                }
                // error case
                if (300...499).contains(statusCode) {
                    var errorData: [String: Any]? = nil
                    
                    do {
                        errorData = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    } catch {
                        completion(.failure(JsonError.failedParsingJsonError(message: "Unable parse JSON")))
                        return
                    }
                    
                    // resultJson non-nil
                    guard let errorJson = errorData else {
                        completion(.failure(JsonError.noDataAvailable(message: "Empty JSON")))
                        return
                    }
                    
                    completion(.failure(AdcioNetworkError.platformError(
                        statusCode: statusCode,
                        message: errorJson["message"] as? String ?? "Unkown Error"
                    )))
                    
                    debugPrint("\(Date()) - \(url) : \(method) Error request - statusCode(\(statusCode))")
                    return
                }
            } else if case .failure(_) = response.result {
                completion(.failure(AdcioNetworkError.serverError))
                return
            }
        }
        
    }
}
