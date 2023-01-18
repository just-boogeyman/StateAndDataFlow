//
//  TextFieldView.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 18.01.2023.
//

import SwiftUI


struct TextFieldView: View {
    
    
    @Binding var text: String
    
    var action: () -> Void
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .textFieldStyle(.roundedBorder)
    }
}



struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextFieldView(text: .constant("128"), action: {})
        }
    }
}
