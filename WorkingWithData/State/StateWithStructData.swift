  //
  //  StateWithStructData.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI


struct StateWithStructData: View {
  @State private var nameData = NameData()
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("State", subtitle: "Two-way Binding",
                 desc: "You can use a struct for your single source of truth.",
                 back: .orange, textColor: .black)
      
      TextField("Enter a name", text: $nameData.firstName)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
      
      TextField("Enter a lastname", text: $nameData.lastName)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
      
      Spacer()
      
      Text("User: \(nameData.firstName) \(nameData.lastName)")
        .font(.largeTitle)
      
      Spacer()
      DescriptionView("A two-way binding means when the state variable is updated, the control gets updated. And when the control updates the value, the state variable gets updated.", back: .blue, textColor: .white)
    }
  }
}

struct StateWithStructData_Previews: PreviewProvider {
  static var previews: some View {
    StateWithStructData()
  }
}
