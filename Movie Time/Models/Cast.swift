//
//  Cast.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 27/10/2021.
//

import Foundation

struct Castresponse : Codable {
    var cast : [Cast]
}

struct Cast : Codable, Identifiable {
    var id : Int?
    var name : String?
    var character : String?
    var profile_path : String?
    var profile_photo : String {
        if let path = profile_path {
            return "https://image.tmdb.org/t/p/original/\(path)"
        }
        return "https://picsum.photos/200/300"
    }
}
