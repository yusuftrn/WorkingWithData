  //
  //  ContentView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("Title", subtitle: "Subtitle text", desc: "Banner text.")
    }
    .font(.title2)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
