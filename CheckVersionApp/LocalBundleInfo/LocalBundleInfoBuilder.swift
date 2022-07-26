//
//  LocalBundleInfoBuilder.swift
//  CheckVersionApp
//
//  Created by DatND2 on 7/26/22.
//

import Foundation

struct LocalBundleInfoBuilder {
    static func build() -> Result<LocalBundleInfo, AppStoreVersionError> {
        guard let infoDict = Bundle.main.infoDictionary else {
            return .failure(.bundleInfoFailure)
        }
        guard let version = infoDict[AF.versionKey] as? String else {
            return .failure(.bundleShortVersionFailure)
        }
        guard let identifier = infoDict[AF.identifierKey] as? String else {
            return .failure(.bundleIdentifierFailure)
        }
        return .success(.init(version: version, identifier: identifier))
    }
}

extension LocalBundleInfoBuilder {
    enum AF {
        static let versionKey = "CFBundleShortVersionString"
        static let identifierKey = "CFBundleIdentifier"
    }
}
