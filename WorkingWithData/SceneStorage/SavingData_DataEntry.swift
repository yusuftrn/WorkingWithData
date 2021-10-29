  //
  //  SavingData_DataEntry.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 29.10.2021.
  //

import SwiftUI

struct SavingData_DataEntry: View {
  @SceneStorage("textInput") var textInput = ""
  @State var stateText = ""
  var body: some View {
    VStack(spacing: 20) {
      DescriptionView("Enter data in here and then navigate away. It will be saved to the variable using @SceneStorage.")
        .layoutPriority(1)
      
      TextEditor(text: $textInput)
        .border(.pink)
        .padding()
      
      DescriptionView("This data will not be saved because it's bound to a @State variable.")
      
      TextEditor(text: $stateText)
        .border(.pink)
        .padding()
    }
    .font(.title2)
  }
}

struct SavingData_DataEntry_Previews: PreviewProvider {
  static var previews: some View {
    SavingData_DataEntry()
  }
}
