//
//  HTTPClient.swift
//  
//
//  Created by 김민식 on 2023/12/27.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func request(from url: URL, parameter: [String: Any], completion: @escaping (HTTPClientResult) -> Void)
}
