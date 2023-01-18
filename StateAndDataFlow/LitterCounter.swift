//
//  LitterCounter.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 18.01.2023.
//

import Foundation
import Combine
import SwiftUI


class LitterCounter: ObservableObject {
    var objectWillChange = PassthroughSubject<TimeCounter, Never>()

//    var color = Color.red
    var onIsOff = false
    var name = ""
    
    
    func chengeTextField() {
        if name.count > 2 {
//            color = .green
            onIsOff = true
        } else {
//            color = .red
            onIsOff = false
        }
    }
}
