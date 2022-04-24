//
//  PersonListView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct PersonListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        VStack {
            List(dataManager.lastNames, id: \.self) { lastname in
                Text(lastname)
            }
            .listStyle(.plain)
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
