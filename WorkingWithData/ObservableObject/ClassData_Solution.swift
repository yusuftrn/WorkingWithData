  //
  //  ClassData_Solution.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct ClassData_Solution: View {
  @StateObject private var car = CarInfo()
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("Class Data", subtitle: "Publishing Your Properties",
                 desc: "The last thing that needs to be done is to publish the variables from your data class so bound views will receive any changed data.")
      
      GroupBox {
        TextField("car year", text: $car.year)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("car make", text: $car.make)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      .padding()
      
      Text("Car Information:")
      Text("\(car.year) \(car.make)").font(.largeTitle)
      
      DescriptionView("And now it works. This is two-way bind with classes.")
    }
    .font(.title2)
  }
}

struct ClassData_Solution_Previews: PreviewProvider {
  static var previews: some View {
    ClassData_Solution()
  }
}
