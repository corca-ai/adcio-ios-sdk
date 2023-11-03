//
//  APIManager.swift
//  
//
//  Created by 최민재 on 11/2/23.
//

import Foundation
import Alamofire

public class APIManager {
    static func request(
        _ url: String,
        method: HTTPMethod = .post,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = ["Content-Type": "application/json"],
        encoding: ParameterEncoding = JSONEncoding.default,
        completion: @escaping (Result<AdcioSuggestionRawData, Error>) -> Void
    )  {
        let request = AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers
        )
                        
        request
        .validate(statusCode: 200..<500)
        .responseDecodable(of: AdcioSuggestionRawData.self) { response in
            dump(response)
            if case .success(_) = response.result {
                guard let adcioSuggestionRawData = response.value else {
                    completion(.failure(JsonError.noDataAvailable(message: "Empty JSON")))
                    return
                }
                completion(.success(adcioSuggestionRawData))
                
            } else if case .failure(let error) = response.result {
                completion(.failure(AdcioNetworkError.platformError(statusCode: error.responseCode ?? -1, message: error.localizedDescription)))
                return
            }
        }
        
    }
}
