//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 17.01.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var name = ""
    @State private var color = Color.red

    @EnvironmentObject private var userManager: UserManager

    
    var body: some View {
        VStack {
            
            HStack{
                TextFieldView(text: $name, action: chengeTextField)
                    .multilineTextAlignment(.center)
                
                TextFieldTupped(name: $name, color: $color)
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegisted.toggle()
        }
    }
    
    private func chengeTextField() {
        color = name.count > 2 ? .green : .red
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct TextFieldTupped: View {
    @Binding var name: String
    @Binding var color: Color

    var body: some View {
        Text("\(name.count)")
            .padding(.trailing, 30)
            .foregroundColor(color)
    }
}




