  //
  //  StructVariables.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct StructVariables: View {
  
  @State var name = "Erva"
  private let randomNames = ["Yusuf", "Elif", "Mert", "Merve"]
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("State", subtitle: "Struct Variables",
                 desc: "Property wrappers can run some logic every time a variable is changed. We can't mutate struct variable values. But @State runs logic that allows variable changes.",
                 back: .orange, textColor: .black)
      Button {
        self.name = self.randomNames[Int.random(in: 0 ... (randomNames.count-1))]
      } label: {
        Text("Change name randomly")
          .padding()
          .background(Capsule().stroke(Color.blue, lineWidth: 2))
      }
      
      Spacer()
      
      Text("Name: \(name)")
        .font(.largeTitle)
      
      Spacer()
      DescriptionView("Modifying a @State variable value does at least two things. \n 1) Stores our value outside of the struct.\n 2) Recreates our view without losing the state variable value.", back: .blue, textColor: .white)
    }
    .font(.title2)
  }
}

struct StructVariables_Previews: PreviewProvider {
  static var previews: some View {
    StructVariables()
  }
}
