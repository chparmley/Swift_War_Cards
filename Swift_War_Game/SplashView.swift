//
//  ContentView.swift
//  Swift_War_Game
//
//  Created by Charles Parmley on 2/10/22.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack(){
            // Spacer behavior is to seperate items of a stack
            // Multiple spacers will share the space evenly
            Spacer()
            
            // Opening Splash Screen Logo
            Image("logo")
                .resizable()
                .aspectRatio(contentMode:
                            .fit)
            // ----
            Spacer()
            
            // Footer
            VStack{
                Text("ChikenParm").foregroundColor(.gray)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
