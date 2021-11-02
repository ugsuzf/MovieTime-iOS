//
//  EnvironmentValues+ImageCache.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 02/11/2021.
//

import SwiftUI


struct ImageCacheKey : EnvironmentKey {
    static let defaultValue: ImageCache = TempImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get {self[ImageCacheKey.self]}
        set {self[ImageCacheKey.self] = newValue}
    }
}
