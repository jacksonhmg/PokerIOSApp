//
//  ContentView.swift
//  PokerApp
//
//  Created by jackson mowatt gok on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            VStack{
                Image("img")
                        .resizable()
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all, 30.0)
                Text("hey")
                    .foregroundColor(Color.yellow)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
