//
//  ContentView.swift
//  weather_app
//
//  Created by Zoltan Vegh on 05/03/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
        if let location = locationManager.location {
            if let weather = weather {
                WeatherView(weather: weather)
            } else {
                LoadingView()
                    .task {
                        do {
                            weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                        } catch {
                            print("Error getting weather: \(error)")
                        }
                    }
            }
        } else {
            if locationManager.isLoading {
                LoadingView()
            } else {
                WelcomeView()
                    .environmentObject(locationManager)
            }
        }
    }
        .background(Color(hue: 0.662, saturation: 0.932, brightness: 0.536))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
