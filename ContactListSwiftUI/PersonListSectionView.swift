//
//  PersonListSectionView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct PersonListSectionView: View {
    @EnvironmentObject var dataManager: DataManager
    var body: some View {
        VStack {
            List(dataManager.emails, id: \.self) { email in
                Text(email)
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
