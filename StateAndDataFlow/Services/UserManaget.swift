//
//  UserManaget.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 28.01.2023.
//

import Combine


final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}


struct User: Codable {
    var name = ""
    var isRegistered = false
}
