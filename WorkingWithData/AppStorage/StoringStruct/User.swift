//
//  User.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 29.10.2021.
//

import Foundation

struct User: Codable {
  var name = ""
  var age = 0
  
  func encode() -> Data? {
    let encoder = JSONEncoder()
    if let encoded = try? encoder.encode(self) {
      return encoded
    } else {
      return nil
    }
  }
  
  static func decode(userData: Data) -> User? {
    let decoder = JSONDecoder()
    if let user = try? decoder.decode(User.self, from: userData) {
      return user
    } else {
      return nil
    }
  }
}
