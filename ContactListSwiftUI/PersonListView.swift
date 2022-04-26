//
//  PersonListView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct PersonListView: View {
    private let persons = Person.getPerson()
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(person.fullName, destination: DetailView(person: person))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
