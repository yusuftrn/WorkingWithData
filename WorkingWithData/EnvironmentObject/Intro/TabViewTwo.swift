  //
  //  TabViewTwo.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct TabViewTwo: View {
  @EnvironmentObject var nameData: NameInfo
  var body: some View {
    VStack {
      Text("Tab 2")
      HeaderView("EnvironmentObject", subtitle: "Introduction",
                 desc: "Use the environmentObject modifier to add ObservableObjects to parent views")
      Spacer()
      Text("The name you entered on Tab 1: ")
        .padding()
      Text("\(nameData.name)")
        .bold()
      Spacer()
    }
  }
}

struct TabViewTwo_Previews: PreviewProvider {
  static var previews: some View {
    TabViewTwo()
  }
}
