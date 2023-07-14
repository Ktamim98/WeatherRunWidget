//
//  WeatherResponse.swift
//  WeatherRunWidgetExtension
//
//  Created by Tamim Khan on 14/7/23.
//

import Foundation


struct WeatherResponse: Codable{
    let forecast: [Weather]
}
