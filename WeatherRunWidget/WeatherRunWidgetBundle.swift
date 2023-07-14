//
//  WeatherRunWidgetBundle.swift
//  WeatherRunWidget
//
//  Created by Tamim Khan on 14/7/23.
//

import WidgetKit
import SwiftUI

@main
struct WeatherRunWidgetBundle: WidgetBundle {
    var body: some Widget {
        WeatherRunWidget()
        WeatherRunWidgetLiveActivity()
    }
}
