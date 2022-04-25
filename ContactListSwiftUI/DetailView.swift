//
//  DetailView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct DetailView: View {
    
    let person: Person
    
    var body: some View {
        VStack(spacing: 50) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            
            PhoneAndEmailView(person: person)
            
            Spacer()
                .navigationTitle(person.fullName)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person(name: "", lastName: "", phone: "", email: ""))
    }
}
