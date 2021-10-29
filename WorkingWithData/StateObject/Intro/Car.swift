//
//  Car.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 29.10.2021.
//

import Foundation

class Car: ObservableObject {
  @Published var year: String
  @Published var make: String
  
  init(year: String, make: String) {
    self.year = year
    self.make = make
  }
}
