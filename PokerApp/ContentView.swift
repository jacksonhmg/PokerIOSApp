//
//  ContentView.swift
//  PokerApp
//
//  Created by jackson mowatt gok on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card5"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                    Image(playerCard)
                        .padding(.trailing,40)
                    
                    Image(cpuCard)

                }.padding(.bottom,20)
                Button(action: {
                   deal()
                }) {
                    Image("button")
                }
                HStack(spacing: 0.0){
                    Spacer()

                    VStack{
                        Text("Player").padding(.bottom, 10)
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 10)
                        Text(String(cpuScore))
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
    
    func deal() {
        // randomise player cards
        var pCardInt = Int.random(in: 2...14)
        playerCard = "card" + String(pCardInt)
        //randomise cpu cards
        var cpuCardInt = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardInt)
        //update scores
        if(pCardInt > cpuCardInt) {
            playerScore += 1;
        }
        else if (cpuCardInt > pCardInt) {
            cpuScore += 1;
        }
        
    }
}

#Preview {
    ContentView()
}
