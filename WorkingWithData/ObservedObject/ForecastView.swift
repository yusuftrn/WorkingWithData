  //
  //  ForecastView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct ForecastView: View {
  @ObservedObject var weather: WeatherForecast
  @Binding var showForecast: Bool
  
  var body: some View {
    VStack(spacing: 20) {
      List(weather.forecast) { day in
        Label(
          title: {Text(day.day).font(.title)},
          icon: {Image(systemName: day.icon).font(.title).foregroundColor(.pink)}
        )
      }
      Button("Close") { showForecast.toggle() }
    }
    .font(.title2)
  }
}

struct ForecastView_Previews: PreviewProvider {
  @State private static var forecast = WeatherForecast()
  @State private static var showForecast = true
  static var previews: some View {
    ForecastView(weather: forecast, showForecast: $showForecast)
  }
}
