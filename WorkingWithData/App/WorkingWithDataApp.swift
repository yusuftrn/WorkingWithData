  //
  //  WorkingWithDataApp.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

@main
struct WorkingWithDataApp: App {
  var body: some Scene {
    WindowGroup {
      EnvironmentObject_GloballyAccessible()
        .environmentObject(GlobalUserModel())
    }
  }
}
