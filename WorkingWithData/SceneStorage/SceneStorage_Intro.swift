  //
  //  SceneStorage_Intro.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct SceneStorage_Intro: View {
  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        HeaderView("", subtitle: "Intro", desc: "Use @SceneStorage to save data for just one screen that will  persist for the lifetime of the app.")
        
        NavigationLink("Enter New Data", destination: SavingData_DataEntry())
        
        Spacer()
      }
      .font(.title)
      .navigationTitle("@SceneStorage")
    }
  }
}

struct SceneStorage_Intro_Previews: PreviewProvider {
  static var previews: some View {
    SceneStorage_Intro()
  }
}
