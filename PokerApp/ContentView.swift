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
            Color(.green).ignoresSafeArea()
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 30.0)
                HStack{
                    Image("card2")
                        .padding(.trailing,40)
                    
                    Image("card3")

                }.padding(.bottom,20)
                Button(action: {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }) {
                    Image("button")
                }
                HStack(spacing: 0.0){
                    Spacer()

                    VStack{
                        Text("Player").padding(.bottom, 10)
                        Text("0")
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 10)
                        Text("0")
                    }
                    Spacer()

                }
                .padding(.top, 11.0)
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.title)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
