//
//  Horoscope.swift
//  Astro
//
//  Created by Vural ÇETİN on 19.10.2021.
//

import Foundation
import UIKit

class Horoscope {
    var name : String
    var image : String
    var color : UIColor
    var horoscopeDescription : String
    
    init() {
    self.name = ""
    self.image = ""
    self.color = UIColor.black
    self.horoscopeDescription = ""
    }
    init(name:String,image:String,color:UIColor,horoscopeDescription:String) {
        self.name = name
        self.color = color
        self.image = image
        self.horoscopeDescription = horoscopeDescription
    }
}


