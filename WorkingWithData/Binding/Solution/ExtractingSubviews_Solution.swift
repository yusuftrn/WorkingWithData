  //
  //  ExtractingSubviews_Solution.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct ExtractingSubviews_Solution: View {
  @State private var name = NameData(firstName: "Yusuf", lastName: "Turan")
  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        HeaderView("", subtitle: "Before",
                   desc: "You may have part of your view that uses a State variable value that you want to make into a Subview.", back: .yellow)
        Spacer()
        Text("Full Name: ")
        Text("\(name.firstName) \(name.lastName)")
          .font(.largeTitle)
          .fontWeight(.black)
        Spacer()
        
          /// Subview this Group into a separate view
        NavigationLink(destination: EditNameView(name: $name)) {
          Text("Edit Name")
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Capsule().fill(.orange))
        }
        Spacer()
      }
      .font(.title2)
      .navigationBarTitle("Binding", displayMode: .inline)
    }
  }
}

struct ExtractingSubviews_Solution_Previews: PreviewProvider {
  static var previews: some View {
    ExtractingSubviews_Solution()
  }
}
