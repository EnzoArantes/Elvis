//
//  ContentView.swift
//  Elvis
//
//  Created by Enzo Arantes on 1/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Peace"
    @State private var imageName = "peacesign"
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                    
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
