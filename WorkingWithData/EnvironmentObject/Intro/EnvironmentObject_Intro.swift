  //
  //  EnvironmentObject_Intro.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct EnvironmentObject_Intro: View {
  var body: some View {
    TabView {
      TabViewOne()
        .tabItem {
          Image(systemName: "1.circle")
          Text("One")
        }
      
      TabViewTwo()
        .tabItem {
          Image(systemName: "2.circle")
          Text("Two")
        }
    }
    .environmentObject(NameInfo())
    .font(.title2)
  }
}

struct EnvironmentObject_Intro_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentObject_Intro()
  }
}
