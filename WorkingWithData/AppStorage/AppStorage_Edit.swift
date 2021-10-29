  //
  //  AppStorage_Edit.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct AppStorage_Edit: View {
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("username") var username: String!
  @State private var newUsername = ""
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("", subtitle: "Update AppStorage Data",
      desc: "To update AppStorage, just assign a new value to the variable.")
      
      Text("Enter a new username:")
      TextField("new username", text: $newUsername)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
      
      Button("Update") {
        username = newUsername
        self.presentationMode.wrappedValue.dismiss()
      }
      Spacer()
    }
    .font(.title2)
    .navigationBarTitle("Update AppStorage")
  }
}

struct AppStorage_Edit_Previews: PreviewProvider {
  static var previews: some View {
    AppStorage_Edit()
  }
}
