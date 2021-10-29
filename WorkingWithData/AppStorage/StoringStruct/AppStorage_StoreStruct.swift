  //
  //  AppStorage_StoreStruct.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct AppStorage_StoreStruct: View {
  @AppStorage("user") var userData = User(name: "Yusuf Turan", age: 29).encode()!
  @State private var userName = ""
  @State private var age = 0
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("AppStorage", subtitle: "Store Structs",
                 desc: "Since you can store Data, you can store a whole struct in AppStorage.")
      Text("AppStorage")
      Text("Name: \(userName)").bold()
      Text("Age: \(age)").bold()
      
      Spacer()
    }
    .font(.title)
    .onAppear {
      getAppStorageData()
    }
  }
  
  func getAppStorageData() {
    if let appUser = User.decode(userData: userData) {
      userName = appUser.name
      age = appUser.age
    }
  }
}

struct AppStorage_StoreStruct_Previews: PreviewProvider {
  static var previews: some View {
    AppStorage_StoreStruct()
  }
}
