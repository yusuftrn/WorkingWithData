  //
  //  BindingWithLazyVStack.swift
  //  WorkingWithData
  //
  //  Created by Yusuf Turan on 28.10.2021.
  //

import SwiftUI

struct BindingWithLazyVStack: View {

  @State private var people = [
    Person(firstName: "Mark", lastName: "Moeykens"),
    Person(firstName: "Rod", lastName: "Liberal"),
    Person(firstName: "Chris", lastName: "Durtschi"),
    Person(firstName: "Chase", lastName: "Blumenthal")]
  @State private var selectedPersonID: UUID?
  
  var body: some View {
    NavigationView {
      ZStack {
        ScrollView {
          LazyVStack {
            HeaderView("", subtitle: "Binding with LazyVStack", desc: "You want to xbind the array and an index for a two-way bind.")
            
            ForEach(people) { person in
              HStack {
                Text("\(person.firstName + " " + person.lastName)")
                Spacer()
                Image(systemName: "pencil.circle")
                  .foregroundColor(.blue)
              }
              .padding()
              .onTapGesture {
                selectedPersonID = person.id
              }
            }
          }
        }
        if let id = selectedPersonID {
          EditPersonPopupView(person: $people[people.firstIndex(where: { $0.id == id })!] , id: $selectedPersonID)
        }
      }
      .font(.title2)
    }
  }
}

struct EditPersonPopupView: View {
  @Binding var person: Person
  @Binding var id: UUID!
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Edit Name").font(.largeTitle)
      TextField("first name", text: $person.firstName)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      TextField("last name", text: $person.lastName)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      Button {
        id = nil
      } label: {
        Text("Close")
      }
    }
    .padding()
    .background(RoundedRectangle(cornerRadius: 20).fill(Color(.systemBackground)).shadow(radius: 8))
    .padding(24)
  }
}

struct BindingWithLazyVStack_Previews: PreviewProvider {
  static var previews: some View {
    BindingWithLazyVStack()
  }
}
