//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                PersonListView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Contacts")
                    }
                
                PersonListSectionView()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
