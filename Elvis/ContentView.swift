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
    @State private var imagelist = ["peacesign", "heart", "lightbulb"]
    @State var messageList = ["Peace", "Love", "Understanding"]
    @State private var num = 0
    var body: some View {
        VStack {
            Text("Elvis Costello")
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
            
            Button("Whats So Funny 'Bout"){
              messageString = messageList[num]
                imageName = imagelist[num]
                num+=1
                if num == 3{
                    num = 0
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
