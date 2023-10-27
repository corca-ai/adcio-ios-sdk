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
    ) {
        let request = AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        )
        request.responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let resultJSON = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    if let resultJSON = resultJSON {
                        if let statusCode = resultJSON["statusCode"] as? Int {
                            if (300...499).contains(statusCode) {
                                debugPrint("\(Date()) - \(url) : \(method) Error request - statusCode(\(statusCode))")
                            } else if (200...299).contains(statusCode) {
                                debugPrint("\(Date()) - \(url) : \(method) request success - statusCode(\(statusCode))")
                            }
                        } else {
                            if resultJSON.keys.contains("success") {
                                debugPrint("\(Date()) - \(url) : \(method) request success")
                            }
                        }
                        dump(resultJSON)
                    }
                } catch {
                    debugPrint("Error while decoding response: \(error) from: \(data)")
                }
            
            case .failure(let error):
                debugPrint("\(Date()) - \(url) : \(method) Error request")
                dump(error)
            }
        }
        
    }
}
