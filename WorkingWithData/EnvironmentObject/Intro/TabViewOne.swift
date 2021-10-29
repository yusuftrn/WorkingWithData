  //
  //  TabViewOne.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct TabViewOne: View {
  @EnvironmentObject var nameInfo: NameInfo
  var body: some View {
    VStack(spacing: 20) {
      Text("Tab 1")
        .font(.largeTitle)
      HeaderView("EnvironmentObject", subtitle: "Introduction",
                 desc: "Use the environmentObject modifier to add ObservableObjects to parent views")
      
      Spacer()
      TextField("Add a name", text: $nameInfo.name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
      Spacer()
    }
  }
}

struct TabViewOne_Previews: PreviewProvider {
  static var previews: some View {
    TabViewOne()
  }
}
