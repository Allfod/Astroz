//
//  Match.swift
//  Astro
//
//  Created by Vural ÇETİN on 19.10.2021.
//

import Foundation

class MatchM {
    var signName: String
    var matchType : String
    init() {
        self.signName = ""
        self.matchType = ""
    }
    init(signName: String,matchType :String) {
        self.signName = signName
        self.matchType = matchType
    }
}
