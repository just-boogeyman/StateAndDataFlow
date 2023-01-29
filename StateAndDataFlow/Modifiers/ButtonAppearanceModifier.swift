//
//  ButtonAppearanceModifier.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 29.01.2023.
//

import SwiftUI

struct ButtonAppearanceModifier: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension View {
    func buttonAppearance(_ color: Color) -> some View {
        modifier(ButtonAppearanceModifier(color: color))
    }
}
