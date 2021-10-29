//
//  Forecast.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 29.10.2021.
//

import Foundation

class WeatherForecast: ObservableObject {
  @Published var forecast = [Weather]()
  
  struct Weather: Identifiable {
    let id = UUID()
    var day = ""
    var icon = ""
  }
  
  init() {
    forecast = [
      Weather(day: "Sunday", icon: "cloud.snow.fill"),
      Weather(day: "Monday", icon: "sun.min.fill"),
      Weather(day: "Tuesday", icon: "sun.max.fill"),
      Weather(day: "Wednesday", icon: "cloud.sun.fill"),
      Weather(day: "Thursday", icon: "sun.min.fill"),
      Weather(day: "Friday", icon: "cloud.drizzle.fill"),
      Weather(day: "Saturday", icon: "cloud.sleet.fill"),
    ]
  }
  
  func fetchAnotherWeek() {
    DispatchQueue.main.asyncAfter(deadline: .now()+1) { [self] in
      forecast.append(contentsOf: forecast)
    }
  }
}
