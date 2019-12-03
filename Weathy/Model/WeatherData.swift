//
//  WeatherData.swift
//  Clima
//
//  Created by ilya_admin on 22/11/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData:Decodable {
    let name: String
    let main: Main
    let weather:[Weather]
}

struct Main:Decodable {
    let temp: Double
}

struct Weather:Decodable {
    let id:Int
    let description:String
    
}
