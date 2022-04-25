//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var dataManager = DataManager()
    var body: some View {
        
        NavigationView {
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
            .navigationTitle("Contact List")
        }
//        .environmentObject(dataManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
