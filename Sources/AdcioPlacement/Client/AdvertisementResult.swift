//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

public enum PlacementResult {
    case success([AdcioSuggestion])
    case failure(Error)
}

public enum AdvertisementBannerResult {
    case success([AdvertisementBanner])
    case failure(Error)
}
