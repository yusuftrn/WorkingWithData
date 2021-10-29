  //
  //  AppStorage_Intro.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct AppStorage_Intro: View {
  @AppStorage("username") var username: String = "Anonymous"
  
  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        HeaderView("", subtitle: "Intro",
                   desc: "You can use @AppStorage to store small amounts of data for your app",
                   back: .orange, textColor: .black)
        
        Text("AppStorage: username")
        Text("\(username)").bold()
        
        NavigationLink("Edit", destination: AppStorage_Edit())
        
        Spacer()
      }
      .font(.title2)
      .navigationTitle("App Storage")
    }
  }
}

struct AppStorage_Intro_Previews: PreviewProvider {
  static var previews: some View {
    AppStorage_Intro()
  }
}
