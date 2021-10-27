//
//  Review.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 27/10/2021.
//

import Foundation


struct ReviewResponse : Codable {
    var results : [Review]
    
}

struct Review : Codable , Identifiable {
    var id : String?
    var author : String?
    var content : String?
    
}
