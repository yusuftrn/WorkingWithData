  //
  //  StateObject_Intro.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct StateObject_Intro: View {
  @StateObject private var car = Car(year: "2020", make: "Honda")
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("StateObject", subtitle: "Introduction",
                 desc: "Use the @StateObject property wrapper for two-way binding between a class and your UI.", back: .green, textColor: .black)

      Text("\(car.year) \(car.make)")
        .font(.largeTitle)
        .fontWeight(.black)
       
      VStack {
        TextField("car year", text: $car.year)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("car make", text: $car.make)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      .padding()
      
      Spacer()
    }
    .font(.title2)
  }
}

struct StateObject_Intro_Previews: PreviewProvider {
  static var previews: some View {
    StateObject_Intro()
  }
}
