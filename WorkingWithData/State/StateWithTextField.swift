//
//  StateWithTextField.swift
//  WorkingWithData
//
//  Created by Yusuf Turan on 28.10.2021.
//

import SwiftUI

struct StateWithTextField: View {
  
  @State private var name = ""
  @State private var darkerBackground = false
  
  var body: some View {
    VStack(spacing: 20) {
      HeaderView("State", subtitle: "Two-way Binding",
                 desc: "Add a dollar sign ($) before the variable name to create a two-way binding between a control and a state variable.",
                 back: .orange, textColor: .black)
      
      TextField("Enter a name", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
      
      Toggle(isOn: $darkerBackground) {
        Text("Darker Background: \(darkerBackground ? "ON" : "OFF")")
      }
      .padding(.horizontal)
      
      Spacer()
      
      Text("Name: \(name)")
        .font(.largeTitle)
      
      Spacer()
      DescriptionView("A two-way binding means when the state variable is updated, the control gets updated. And when the control updates the value, the state variable gets updated.", back: .blue, textColor: .white)
    }
  }
}

struct StateWithTextField_Previews: PreviewProvider {
    static var previews: some View {
        StateWithTextField()
    }
}
