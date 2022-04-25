//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct Person: Hashable {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        
        var person: [Person] = []
        
        let name = DataManager.shared.names.shuffled()
        let lastName = DataManager.shared.lastNames.shuffled()
        let phone = DataManager.shared.phones.shuffled()
        let email = DataManager.shared.emails.shuffled()
        
        for item in 0..<name.count {
            let persons = Person(
                name: name[item],
                lastName: lastName[item],
                phone: phone[item],
                email: email[item]
            )
            person.append(persons)
        }
        return person
    }
}
