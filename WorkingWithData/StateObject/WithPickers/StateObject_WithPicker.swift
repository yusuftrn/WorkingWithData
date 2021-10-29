  //
  //  StateObject_WithPicker.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI



struct StateObject_WithPicker: View {
  @StateObject private var carChoices = CarChoices()
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("StateObject", subtitle: "With Picker", desc: "Here's an example of binding a @StateObject property to a Picker.", back: .green, textColor: .black)
      
      Text("Select a car")
      Picker(selection: $carChoices.selectedCar, label: Text("Picker")) {
        ForEach(carChoices.cars, id:\.self) { car in
          Text(car).tag(car)
        }
      }
      .pickerStyle(WheelPickerStyle())
      .background(Color.green.cornerRadius(20).opacity(0.3))
      .padding(.horizontal)
      
      Text("You selected a: ") + Text(carChoices.selectedCar).bold().foregroundColor(.green)
    }
    .font(.title2)
  }
}

struct StateObject_WithPicker_Previews: PreviewProvider {
  static var previews: some View {
    StateObject_WithPicker()
  }
}
