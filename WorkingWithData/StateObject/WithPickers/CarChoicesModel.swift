//
//  CarChoicesModel.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 29.10.2021.
//

import Foundation

class CarChoices: ObservableObject {
  @Published var cars: [String] = [""]
  @Published var selectedCar = ""
  
  init() {
    DispatchQueue.main.asyncAfter(deadline: .now()+2) { [self] in
      cars = ["Audi", "Honda", "Mazda", "Tesla", "Totoya"]
      selectedCar = cars[2]
    }
  }
}
