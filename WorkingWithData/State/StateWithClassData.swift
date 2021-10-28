  //
  //  StateWithClassData.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

class NameClass {
  var firstName = ""
  var lastName = ""
  
  init(first: String, last: String) {
    self.firstName = first
    self.lastName = last
  }
}

struct StateWithClassData: View {
  @State private var name = NameClass(first: "Yusuf", last: "Turan")
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("State", subtitle: "Working with Classes",
                 desc: "A class can be used for a one-way bind.", back: .orange, textColor: .black)
      
      Text("Name: \(name.firstName) \(name.lastName)").bold()
     
      VStack {
        Text("Lets try updating the names").padding()
        TextField("Enter a name", text: $name.firstName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal)
        
        TextField("Enter a lastname", text: $name.lastName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal)
      }
    }
    .font(.title2)
  }
}

struct StateWithClassData_Previews: PreviewProvider {
  static var previews: some View {
    StateWithClassData()
  }
}
