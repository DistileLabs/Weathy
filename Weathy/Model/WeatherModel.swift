//
//  WeatherModel.swift
//  Clima
//
//  Created by ilya_admin on 23/11/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId:Int
    let temperature:Double
    let cityName:String
    
    var temperatureString:String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName:String {
        var weatherIcon:String = ""
        
        switch conditionId {
        case 200..<300:
            weatherIcon = "cloud.bolt"
            break
        case 300..<400:
            weatherIcon = "cloud.drizzle"
            break
        case 500..<600:
            weatherIcon = "cloud.rain"
            break
        case 600..<700:
            weatherIcon = "cloud.snow"
            break
        case 700..<800:
            weatherIcon = "cloud.fog"
            break
        case 800:
            weatherIcon = "sun.max"
            break
        case 801...804:
            weatherIcon = "cloud"
        default:
            print("Wrong condition code")
        }
        
        return weatherIcon
    }
}
