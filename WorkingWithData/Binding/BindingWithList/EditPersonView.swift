  //
  //  EditPersonView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct EditPersonView: View {
  @Binding var person: Person
  var body: some View {
    VStack(spacing: 20) {
      Group {
        Text("Edit and go back when done:")
        TextField("first name", text: $person.firstName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("first name", text: $person.lastName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      .padding(.horizontal)
    }
  }
}

struct EditPersonView_Previews: PreviewProvider {
  @State static private var person = Person(firstName: "Yusuf", lastName: "Turan")
  static var previews: some View {
    EditPersonView(person: $person)
  }
}
