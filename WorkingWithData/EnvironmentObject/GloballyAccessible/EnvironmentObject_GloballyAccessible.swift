  //
  //  EnvironmentObject_GloballyAccessible.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct EnvironmentObject_GloballyAccessible: View {
  @EnvironmentObject private var user: GlobalUserModel
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("@EnvironmentObject", subtitle: "Globally Accessible",
                 desc: "To make an ObservableObject globally accessible to your app, add it to the root view in your App object.")
      
      Form {
        Section(header: Text("Settings")) {
          HStack {
            Text("Username: ")
            TextField("username", text: $user.username)
              .textFieldStyle(RoundedBorderTextFieldStyle())
          }
          Toggle("Show as online", isOn: $user.showAsOnline)
        }
      }
      Spacer()
    }
    .font(.title2)
  }
}

struct EnvironmentObject_GloballyAccessible_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentObject_GloballyAccessible()
      .environmentObject(GlobalUserModel())
  }
}
