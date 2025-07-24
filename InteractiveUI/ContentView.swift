//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Lina Mered on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = ""
    
    @State private var age : String = ""
    
    @State private var textTitle = "What is your name?"
    
    @State private var textAge = "What is your age?"
    
    @State private var presentAlert = false
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
            
            Text(textAge)
                .font(.title)
            
            TextField("Type your age here...", text:$age)
                .multilineTextAlignment(.center)
                .font(.title)

            
            Button("Submit") {
                presentAlert = true
                textTitle = "Welcome, \(name)!"
                textAge = "Age: \(age)"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
