//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 29.01.2023.
//

import SwiftUI

final class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func feachUser() -> User {
        guard let userData else { return User() }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        guard let user = user else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }
}
