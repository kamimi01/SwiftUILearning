//
//  Weather.swift
//  GoodWeather
//
//  Created by Mika Urakawa on 2021/07/05.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
