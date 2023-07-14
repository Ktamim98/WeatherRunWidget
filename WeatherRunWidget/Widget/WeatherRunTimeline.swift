//
//  WeatherRunTimeline.swift
//  WeatherRunWidgetExtension
//
//  Created by Tamim Khan on 14/7/23.
//

import WidgetKit
import SwiftUI



struct WeatherRunTimeline: TimelineProvider{
    
    typealias Entry = WeatherRunEntry
    
    @AppStorage("countStep", store: UserDefaults(suiteName: "group.com.tamim.weatheRun"))
    var countStep: Int = 0
    
    
    func placeholder(in context: Context) -> WeatherRunEntry {
        let entry = WeatherRunEntry(date: Date(), weather: Weather(name: "SF", temperature: 67, unit: "F", description: "Cloudy"), steps: countStep)
       return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (WeatherRunEntry) -> Void) {
        let entry = WeatherRunEntry(date: Date(), weather: Weather(name: "SF", temperature: 67, unit: "F", description: "Cloudy"), steps: countStep)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherRunEntry>) -> Void) {
        let currentDate = Date()
        let refreshDate = Calendar.current.date(byAdding: .minute, value: 15, to: currentDate)!
        
        WeatherService().getWeather { (result) in
            let weather: Weather
            
            if case.success(let fetchData) = result {
                weather = fetchData.first!
                
            }else{
                weather = Weather(name: "SF", temperature: 0, unit: "F", description: "Error getting weather info")
            }
            
            let entry = WeatherRunEntry(date: currentDate, weather: weather, steps: countStep)
            let timeline = Timeline(entries: [entry], policy: .atEnd)
            completion(timeline)
        }
    }
    
   
    
}
