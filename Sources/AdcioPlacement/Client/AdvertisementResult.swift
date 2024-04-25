//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

public enum AdvertisementProductResult {
    case success([AdvertisementProduct])
    case failure(Error)
}

public enum AdvertisementBannerResult {
    case success([AdvertisementBanner])
    case failure(Error)
}
