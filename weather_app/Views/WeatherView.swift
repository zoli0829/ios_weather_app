//
//  WeatherView.swift
//  weather_app
//
//  Created by Zoltan Vegh on 07/03/2025.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
