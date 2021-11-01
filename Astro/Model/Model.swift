//
//  Model.swift
//  Astro
//
//  Created by Vural ÇETİN on 18.10.2021.
//

import Foundation

struct AstroModel : Codable {
    var results : [AstroResults]
    enum CodingKeys: String,CodingKey {
        case results
    }
    
}
struct AstroResults : Codable {
    let sign : String
    let day : String
    enum CodingKeys : String,CodingKey {
        case sign , day
    }
}
