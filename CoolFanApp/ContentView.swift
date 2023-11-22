//
//  ContentView.swift
//  CoolFanApp
//
//  Created by Pieter Yoshua Natanael on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isRotating = false
    
    var body: some View {
        VStack(spacing: 20) {
            RotatingImageView(isRotating: $isRotating)
                .padding(.bottom, 150)
            
            Button(action: {
                self.isRotating.toggle()
            }) {
                Text("Start")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 15)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 
 note:the fan is purple colour
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
