  //
  //  HeaderView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct HeaderView: View {
  var title = "Title"
  var subtitle = "Subtitle"
  var desc = "Use this to..."
  var back = Color.orange
  var textColor = Color.black
  
  init(_ title: String, subtitle: String, desc: String, back: Color = .orange, textColor: Color = .black) {
    self.title = title
    self.subtitle = subtitle
    self.desc = desc
    self.back = back
    self.textColor = textColor
  }
  var body: some View {
    VStack(spacing: 20) {
      if title != "" {
        Text(title)
          .font(.largeTitle)
      }
      Text(subtitle)
        .foregroundColor(.gray)
      
      DescriptionView(desc, back: back, textColor: textColor)
    }
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView("Test Header", subtitle: "Test subtitle", desc: "Sample")
  }
}
