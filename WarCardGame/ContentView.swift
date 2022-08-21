//
//  ContentView.swift
//  WarCardGame
//
//  Created by Yazan Salem on 8/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card8"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Image(playerCard)
                    Spacer()
                    
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playerNewCard = Int.random(in: 2...14)
                    let cpuNewCard = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerNewCard)
                    cpuCard = "card" + String(cpuNewCard)
                    
                    if(playerNewCard > cpuNewCard){
                        playerScore += 1
                    }
                    else if(cpuNewCard > playerNewCard){
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
