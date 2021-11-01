//
//  APIEnsure.swift
//  Astro
//
//  Created by Vural ÇETİN on 20.10.2021.
//

import UIKit

class APIEnsure : NSObject {
    static func loadData() -> [Horoscope] {
        var horoscope :  [Horoscope] = []
        horoscope.append(Horoscope(name: "Aries", image: "aries", color: UIColor.init(red: 53/255, green: 27/255, blue: 73/255, alpha: 1), horoscopeDescription: "Mar 21 - Apr 19"))
        horoscope.append(Horoscope(name: "Taurus", image: "taurus", color: UIColor.init(red: 60/255, green: 34/255, blue: 80/255, alpha: 1), horoscopeDescription: "Apr 20 - May 20"))
        horoscope.append(Horoscope(name: "Gemini", image: "gemini", color: UIColor.init(red: 68/255, green: 42/255, blue: 86/255, alpha: 1), horoscopeDescription: "May 21 - Jun 20"))
        horoscope.append(Horoscope(name: "Cancer", image: "cancer", color: UIColor.init(red: 108/255, green: 53/255, blue: 104/255, alpha: 1), horoscopeDescription: "Jun 21 - Jul 22"))
        horoscope.append(Horoscope(name: "Leo", image: "leo", color: UIColor.init(red: 95/255, green: 58/255, blue: 111/255, alpha: 1), horoscopeDescription: "Jul 23 - Aug 22"))
        horoscope.append(Horoscope(name: "Virgo", image: "virgo", color: UIColor.init(red: 98/255, green: 66/255, blue: 124/255, alpha: 1), horoscopeDescription: "Aug 23 - Sep 22"))
        horoscope.append(Horoscope(name: "Libra", image: "libra", color: UIColor.init(red: 126/255, green: 61/255, blue: 118/255, alpha: 1), horoscopeDescription: "Sep 23 - Oct 22"))
        horoscope.append(Horoscope(name: "Scorpio", image: "scorpio", color: UIColor.init(red: 133/255, green: 58/255, blue: 108/255, alpha: 1), horoscopeDescription: "Oct 23 - Nov 21"))
        horoscope.append(Horoscope(name: "Sagittarius", image: "sagittarius", color: UIColor.init(red: 145/255, green: 64/255, blue: 116/255, alpha: 1), horoscopeDescription: "Nov 22 - Dec 21"))
        horoscope.append(Horoscope(name: "Capricorn", image: "capricorn", color: UIColor.init(red: 198/255, green: 91/255, blue: 116/255, alpha: 1), horoscopeDescription: "Dec 22 - Jan 19"))
        horoscope.append(Horoscope(name: "Aquarius", image: "aquarius", color: UIColor.init(red: 190/255, green: 78/255, blue: 109/255, alpha: 1), horoscopeDescription: "Jan 20 - Feb 18"))
        horoscope.append(Horoscope(name: "Pisces", image: "pisces", color: UIColor.init(red: 163/255, green: 78/255, blue: 118/255, alpha: 1), horoscopeDescription: "Feb 19 - Mar 20"))
        
        return horoscope
    }
}

