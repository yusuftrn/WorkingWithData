  //
  //  DescriptionView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct DescriptionView: View {
  var desc = "Use this to..."
  var backColor = Color.orange
  var textColor = Color.black
  
  init(_ desc: String, back: Color = .orange, textColor: Color = .black) {
    self.desc = desc
    self.backColor = back
    self.textColor = textColor
  }
  var body: some View {
    Text(desc)
      .frame(maxWidth: .infinity)
      .padding()
      .background(backColor)
      .foregroundColor(textColor)
  }
}

struct DescriptionView_Previews: PreviewProvider {
  static var previews: some View {
    DescriptionView("Sample description Content")
  }
}
