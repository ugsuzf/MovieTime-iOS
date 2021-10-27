//
//  NetworkManager.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 27/10/2021.
//

import Foundation
import Alamofire


final class NetworkManager<T: Codable> {
    static func fetch(from urlString: String, complation : @escaping (Result<T, NetworkError>) -> Void ){
        AF.request(urlString).responseDecodable(of: T.self) { (resp) in
            if resp.error != nil {
                complation(.failure(.invalidResponse))
                print(resp.error!)
                return
            }
            
            if let payload = resp.value {
                complation(.success(payload))
                return
            }
            
            complation(.failure(.nilResponse))
        }
    }
}

enum NetworkError : Error {
    case invalidResponse
    case nilResponse
}
