//
//  WeatherRunEntry.swift
//  WeatherRunWidgetExtension
//
//  Created by Tamim Khan on 14/7/23.
//

import WidgetKit
import SwiftUI

struct WeatherRunEntry: TimelineEntry {
    public let date: Date
    public let weather: Weather
    
    var steps: Int
    
    var distance: String {
            let rawDistance = Double(steps) * 0.000762   // 1 steps = 0.000762 km
            let formattedDistance = String(format: "%.1f", rawDistance)
            return formattedDistance.trimmingCharacters(in: .whitespaces)
        }
    
    var relevance: TimelineEntryRelevance?{
        return TimelineEntryRelevance(score: 50)
    }
}
