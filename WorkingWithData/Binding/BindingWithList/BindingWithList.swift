  //
  //  BindingWithList.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct BindingWithList: View {
  @State private var people = [
    Person(firstName: "Mark", lastName: "Moeykens"),
    Person(firstName: "Lem", lastName: "Guerrero"),
    Person(firstName: "Chris", lastName: "Evans")
  ]
  
  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        HeaderView("", subtitle: "Binding With List", desc: "You want to bind the array and an index for a two-way bind.")
        
        List(people) { person in
          NavigationLink(destination:
                          EditPersonView(person: $people[people.firstIndex(where: { $0.id == person.id })!])) {
              Text("\(person.firstName + " " + person.lastName)")
          }
        }
      }
      .navigationBarTitle("Editing Array Items")
    }
  }
}

struct BindingWithList_Previews: PreviewProvider {
  static var previews: some View {
    BindingWithList()
  }
}
