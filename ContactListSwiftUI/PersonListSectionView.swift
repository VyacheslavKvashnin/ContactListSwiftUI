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
        VStack {
            List(persons, id: \.self) { person in
                Section(person.fullName) {
                    PhoneAndEmailView(person: person)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct PersonListSectionView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListSectionView()
    }
}
