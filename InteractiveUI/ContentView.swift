//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Lina Mered on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = ""
    
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        ZStack {
            Text("What is your name?")
                .font(.title)
            
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
            
            Button("Sumbit name") {
                
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
