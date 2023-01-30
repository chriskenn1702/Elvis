//
//  ContentView.swift
//  Elvis
//
//  Created by Christopher Kennedy on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Whats So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
                .foregroundColor(.black)
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple
                )
            Spacer()
            
            HStack{
                Button("Peace"){
                    messageString = "Peace"
                    imageName = "peacesign"
                }
                Button("Love"){
                    messageString = "Love"
                    imageName = "heart"
                }
                Button("Understanding"){
                    messageString = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
