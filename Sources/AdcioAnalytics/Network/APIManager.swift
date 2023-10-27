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
        AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        ) {
            $0.timeoutInterval = 15
        }.responseJSON { response in
            switch response.result {
            case.success:q
                print("\(Date()) - \(url) : 성공")
            
            case .failure(let error):
                dump(error)
                break
            }
        }
        
    }
}
