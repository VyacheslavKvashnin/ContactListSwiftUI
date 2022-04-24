//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Вячеслав Квашнин on 24.04.2022.
//

import Foundation

class DataManager: ObservableObject {
    
    @Published var names = [
        "Harry", "Oliver", "Jack", "Charlie", "Thomas",
        "Jacob", "Alfie", "Riley", "William", "James"
    ]
    
    @Published var lastNames = [
        "Evans", "Stone", "Roberts", "Mills", "Lewis",
        "Morgan", "Florence", "Campbell", "Bronte","Adams"
    ]
    
    @Published var phones = [
        "3849096", "2234565", "6778896", "07766653", "3456886",
        "1298455", "2134212", "989765", "3456375", "455543323"
    ]
    
    @Published var emails = [
        "aaa@mail.ru", "foggy@mail.ru", "lol@mail.ru", "kop@mail.ru",
        "dog@mail.ru", "cat@mail.ru", "son@mail.com", "bit@gf.com",
        "fill@gmail.com", "jab@hy.com"
    ]
    
}
