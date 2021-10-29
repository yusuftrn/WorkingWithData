  //
  //  ObservableObject_WithSubView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct ObservableObject_WithSubView: View {
  @StateObject private var weather = WeatherForecast()
  @State private var showForecast = false
  var body: some View {
    NavigationView {
      ZStack {
        VStack(spacing: 20) {
          HeaderView("", subtitle: "Introduction",
                     desc: "Pass a reference of your @StateObject into a subview that has a type @ObservedObject.", back: .pink, textColor: .white)
          
          Text(weather.forecast[0].day)
          Image(systemName: weather.forecast[0].icon)
            .font(.system(size: 120))
            .foregroundColor(.pink)
          Button("Show 7 Days Forecast") {
            showForecast = true
            weather.fetchAnotherWeek()
          }
          Spacer()
        }.font(.title)
        
        if showForecast {
          ForecastView(weather: weather, showForecast: $showForecast)
        }
      }
      .navigationTitle("@ObservedObject")
    }
  }
}

struct ObservableObject_WithSubView_Previews: PreviewProvider {
  static var previews: some View {
    ObservableObject_WithSubView()
  }
}
