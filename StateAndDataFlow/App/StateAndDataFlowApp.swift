//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 17.01.2023.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
        
    @StateObject private var userManager = UserManager()
    
    private let user = DataManager.shared.feachUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
