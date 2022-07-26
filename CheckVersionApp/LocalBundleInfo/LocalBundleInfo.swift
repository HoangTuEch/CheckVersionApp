//
//  LocalBundleInfo.swift
//  CheckVersionApp
//
//  Created by DatND2 on 7/26/22.
//

import Foundation

struct LocalBundleInfo {
    let version: String
    let identifier: String
    
    var requestPath: String {
        AF.appStorePath + identifier
    }
    
    var appStoreURL: URL? {
        URL(string: requestPath)
    }
}

// MARK: - Constants
extension LocalBundleInfo {
    enum AF {
        static let appStorePath = "http://itunes.apple.com/lookup?bundleId="
    }
}
