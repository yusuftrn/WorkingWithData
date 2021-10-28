  //
  //  EditNameView.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct EditNameView: View {
  @Binding var name: NameData
  var body: some View {
    VStack(spacing: 20) {
      Group {
        Text("Edit and go back when done:")
        TextField("first name", text: $name.firstName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("first name", text: $name.lastName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      .padding(.horizontal)
    }
  }
}

struct EditNameView_Previews: PreviewProvider {
  @State static var sampleName = NameData(firstName: "Yusuf", lastName: "Turan")
  static var previews: some View {
    EditNameView(name: $sampleName)
  }
}
