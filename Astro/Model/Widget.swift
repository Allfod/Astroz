//
//  Widget.swift
//  Astro
//
//  Created by Vural ÇETİN on 19.10.2021.
//

import Foundation

class WidgetM : NSObject , NSCoding {
    var name : String
    var image : String
    var horoscopeDescription : String
    var date :String
    
        
    init(name:String,image:String,horoscopeDescription:String,date:String) {
        self.name = name
        self.image = image
        self.horoscopeDescription = horoscopeDescription
        self.date = date
        
    }
    required init(coder decoder: NSCoder) {
        self.name = decoder.decodeObject(forKey : "name") as? String ?? ""
        self.image = decoder.decodeObject(forKey: "image") as? String ?? ""
        self.horoscopeDescription = decoder.decodeObject(forKey: "horoscopeDescription") as? String ?? ""
        self.date = decoder.decodeObject(forKey: "date") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name,forKey: "name")
        coder.encode(image , forKey: "image")
        coder.encode(horoscopeDescription,forKey: "horoscopeDescription")
        coder.encode(date ,forKey: "date")
    }
}
