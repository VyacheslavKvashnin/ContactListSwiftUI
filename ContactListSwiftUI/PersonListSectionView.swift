//
//  PersonListSectionView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct PersonListSectionView: View {
    private let persons = Person.getPerson()
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                Section(person.fullName) {
                    PhoneAndEmailView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListSectionView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListSectionView()
    }
}
