//
//  AppStoreVersionResponse.swift
//  CheckVersionApp
//
//  Created by DatND2 on 7/26/22.
//

import Foundation

struct AppStoreVersionResponse: Decodable {
    var results: [Version]

    enum CodingKeys: String, CodingKey {
        case results
    }

    struct Version: Decodable {
        var version: String
        var releaseNotes: String
        var trackId: Int

        enum CodingKeys: String, CodingKey {
            case version
            case releaseNotes
            case trackId
        }
    }
}

extension AppStoreVersionResponse {
    var versionModel: AppStoreVersion? {
        guard let result = results.first else { return nil }
        return AppStoreVersion(
            appId: "\(result.trackId)",
            version: result.version,
            releaseNotes: result.releaseNotes
        )
    }
}
