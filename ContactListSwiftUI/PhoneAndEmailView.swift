//
//  PhoneAndEmailView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 25.04.2022.
//

import SwiftUI

struct PhoneAndEmailView: View {
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.phone)
            }
            Divider()
            
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.blue)
                Text(person.email)
            }
        }
        .font(.title3)
    }
}

struct PhoneAndEmailView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneAndEmailView(person: Person(name: "", lastName: "", phone: "", email: ""))
    }
}
