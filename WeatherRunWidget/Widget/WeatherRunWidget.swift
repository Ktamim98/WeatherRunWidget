//
//  WeatherRunWidget.swift
//  WeatherRunWidget
//
//  Created by Tamim Khan on 14/7/23.
//

import WidgetKit
import SwiftUI
import Intents


struct WeatherRunWidget: Widget {
    let kind: String = "WeatherRunWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: WeatherRunTimeline()) { entry in
            WeatherRunWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium])
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}


