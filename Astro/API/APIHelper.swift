//
//  APIHelper.swift
//  Astro
//
//  Created by Vural ÇETİN on 20.10.2021.
//

import Foundation
import CoreVideo

enum AstroSign: String {
    case Aries = "1"
    case Taurus = "2"
    case Gemini = "3"
    case Cancer = "4"
    case Leo = "5"
    case Virgo = "6"
    case Libra = "7"
    case Scorpio = "8"
    case Sagittarius = "9"
    case Capricorn = "10"
    case Aquarius = "11"
    case Pisces = "12"
}
enum AstroType {
    case general
    case love
    case career
    case money
    case welness
}
enum Day {
    case yesterday
    case today
    case tomorrow
}
public func astrosSign (sign : String) ->String {
    var signValue = ""
    if (sign == "Aries") {
        signValue = "1"
    }else if(sign == "Taurus") {
        signValue = "2"
    } else if(sign == "Gemini") {
        signValue = "3"
    } else if(sign == "Cancer") {
        signValue = "4"
    } else if(sign == "Leo") {
        signValue = "5"
    } else if(sign == "Virgo") {
        signValue = "6"
    } else if(sign == "Libra") {
        signValue = "7"
    } else if(sign == "Scorpio") {
        signValue = "8"
    } else if(sign == "Sagittarius") {
        signValue = "9"
    } else if(sign == "Capricorn") {
        signValue = "10"
    } else if(sign == "Aquarius") {
        signValue = "11"
    } else if(sign == "Pisces") {
        signValue = "12"
    }
    
    return signValue
}
