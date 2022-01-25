//
//  AE2HomeScreen.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

struct AE2HomeScreen: View {
    var body: some View {
        TabView{
            
            AE2CivListView()
                .tabItem {
                    Image(systemName: "checkerboard.shield")
                    Text("Civs")
                }
            
            AE2HomeScreen()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Matches")
                }
            
            AE2HomeScreen()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
        }.accentColor(.theme.accent)
    }
}

struct AE2HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        AE2HomeScreen()
    }
}
