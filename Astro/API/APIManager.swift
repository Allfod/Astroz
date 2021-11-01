//
//  APIManager.swift
//  Astro
//
//  Created by Vural ÇETİN on 18.10.2021.
//

import Foundation
import Moya
import SwiftSoup


class API : NSObject  {
    let baseUrl : String = "https://www.horoscope.com/us/horoscopes/"
    
    public static func getSign(sign:String,time:String,completionHandler : @escaping (String) -> Void ) {
        do {
            let url = NSURL(string: "https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-" + time + ".aspx?sign=" + sign)
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            let document : Document = try SwiftSoup.parse(html as String)
            if let data: Element = try document.select("div.horoscope-content p").first() {
                let description = try data.text()
                completionHandler(description)
            }
        } catch {
            
        }
    }
    public static func getLove(sign:String,time:String,completionHandler :@escaping (String)-> Void) {
        do {
            let url = NSURL(string: "https://www.horoscope.com/us/horoscopes/love/horoscope-love-daily-" + time + ".aspx?sign=" + sign)
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            let document : Document = try SwiftSoup.parse(html as String)
            if let data: Element = try document.select("div.horoscope-content p").first() {
                let description = try data.text()
                completionHandler(description)
            }
        }catch {
            
        }
    }
    
    public static func getCareer(sign:String,time:String,completionHandler:@escaping (String) -> Void) {
        do {
            let url = NSURL(string: "https://www.horoscope.com/us/horoscopes/career/horoscope-career-daily-" + time + ".aspx?sign=" + sign)
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            let document : Document = try SwiftSoup.parse(html as String)
            if let data : Element = try document.select("div.horoscope-content p").first() {
                let career = try data.text()
                completionHandler(career)
            }
        }catch {
            
        }
    }
    
    public static func getMoney (sign:String,time:String,completionHandler:@escaping (String) -> Void) {
        do {
            let url = NSURL(string: "https://www.horoscope.com/us/horoscopes/money/horoscope-money-weekly.aspx?sign=" + sign)
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            let document : Document = try SwiftSoup.parse(html as String)
            if let data : Element = try document.select("div.horoscope-content p").first() {
                let money = try data.text()
                completionHandler(money)
            }
        }catch {
            
        }
    }
    public static func getMedicana (sign:String,time:String,completionHandler:@escaping (String) -> Void) {
        do {
            let url = NSURL(string: "https://www.horoscope.com/us/horoscopes/wellness/horoscope-wellness-daily-" + time + ".aspx?sign=" + sign)
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            let document : Document = try SwiftSoup.parse(html as String)
            if let data: Element = try document.select("div.horoscope-content p").first() {
                let medicana = try data.text()
                completionHandler(medicana)
            }
        }catch {
            
        }
    }
    
    
}
