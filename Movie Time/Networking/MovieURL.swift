//
//  MovieURL.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 02/11/2021.
//

import Foundation
import SwiftUI

enum MovieURL : String {
    case nowPlaying = "now_playing"
    case upcoming = "upcoming"
    case popular = "popular"
    
    public var urlString : String{
        "\(MovieDownloadManager.baseURL)\(self.rawValue)?api_key=\(API.key)&language=en-US&page=1"
    }
    
}
