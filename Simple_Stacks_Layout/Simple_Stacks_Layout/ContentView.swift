//
//  ContentView.swift
//  Simple_Stacks_Layout
//
//  Created by Bill Skrzypczak on 10/5/24.
//

import SwiftUI

struct StackExampleView: View {
    var body: some View {
        ZStack {
            // Background Color
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome to SwiftUI")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    Text("Left")
                        .foregroundColor(.yellow)
                    Spacer() // This spacer pushes items apart
                    Text("Right")
                        .foregroundColor(.yellow)
                }
                .padding()
                
                ZStack {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                    
                    Text("ZStack!")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .padding()
            }
        }
    }
}

#Preview {
    StackExampleView()
}
