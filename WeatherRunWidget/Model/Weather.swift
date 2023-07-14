//
//  Weather.swift
//  WeatherRunWidgetExtension
//
//  Created by Tamim Khan on 14/7/23.
//

import Foundation


struct Weather: Codable{
    let name: String
    let temperature: Int
    let unit: String
    let description: String
}
