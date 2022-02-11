//
//  GameView.swift
//  Swift_War_Game
//
//  Created by Charles Parmley on 2/10/22.
//

import SwiftUI

struct GameView: View {
    // Declaring struct properties
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    // adding the @State wrapper to variable declarations allows a Structs normally
    //     immutable properties to be update-able
    // in combination with making them private variabls restricts access to the Struct and its methods.
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        VStack(){
            // Spacer behavior is to seperate items of a stack
            // Multiple spacers will share the space evenly
            Spacer()
            Image("logo")
            Spacer()
            
            // cpu/player hand ui placements
            HStack{
                Spacer()
                Image(playerCard)// card from struct properties
                Spacer()
                Image(cpuCard)// card from struct properties
                Spacer()
            }
            
            
            Spacer()
            
            
            // Deal button
            // Giving player and cpu a random card
            Button(action: {
                // chosing random number from range for cpu/player
                let newPlayerCard = Int.random(in: 2...14)
                let newCpuCard = Int.random(in: 2...14)
                
                // comparing the player and cpu cards
                if newPlayerCard >= newCpuCard{
                        playerScore += 1
                }
                else{
                        cpuScore += 1
                }
                
                // updating cpu and player cards/scores
                playerCard = "card" + String(newPlayerCard)
                cpuCard = "card" + String(newCpuCard)
                
            // setting button label to the 'deal' image resource
            }, label:{
                Image("dealbutton")
            })
            
            
            Spacer()
            
            
            
            // Scores
            HStack{
                
                Spacer()
                
                
                // Player score text
                VStack{
                    Text("Player").font(.system(size: 30, weight: .medium, design: .default))
                        .padding(.bottom, 10)
                    Text(String(playerScore)).font(.system(size: 30, weight: .medium, design: .default))
                }
                
                
                Spacer()
                
                
                // CPU score text
                VStack{
                    Text("CPU").font(.system(size: 30, weight: .medium, design: .default))
                        .padding(.bottom, 10)
                    Text(String(cpuScore)).font(.system(size: 30, weight: .medium, design: .default))
                }
                
                
                Spacer()
            }
            .foregroundColor(Color(
                .white))
            
            
            Spacer()
            
            
            // Footer
            VStack{
                Text("ChikenParm").foregroundColor(.gray)
            }
        }.background(Image("background").edgesIgnoringSafeArea(.all))
    }
}


// rendering the preview seen in the Simulator
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
