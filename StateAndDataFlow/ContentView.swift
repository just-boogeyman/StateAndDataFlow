//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Ярослав Кочкин on 17.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter() // Для работы с классом используем такие обертки
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)   //отступ сверху
            Spacer()
            
            ButtonView(timer: timer)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


struct ButtonView: View {
    @ObservedObject var timer: TimeCounter // Для работы с классом используем такие обертки
    
    var body: some View {
        
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
