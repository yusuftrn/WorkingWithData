//
//  UserModel.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 29.10.2021.
//

import Foundation

class GlobalUserModel: ObservableObject {
  @Published var username = "Ellen"
  @Published var showAsOnline = true
}
