//
//  AE2CivTabView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivTabView: View {
    
    let civ: Civilisation
    
    var body: some View {
        
            TabView{
                AE2CivView(civ: civ)
                    .tabItem {
                        Image(systemName: "checkerboard.shield")
                        Text("Civ")
                    }
                AE2UnitView(civ: civ)
                    .tabItem {
                        Image(systemName: "person.badge.plus")
                        Text("Unit")
                    }
                AE2TechView(civ: civ)
                    .tabItem {
                        Image(systemName: "bonjour")
                        Text("Tech")
                    }
            }
            .accentColor(.theme.accent)
            .navigationTitle(civ.name)
            .navigationBarTitleDisplayMode(.inline)
        
        
    }
struct AE2CivTabView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivTabView(civ: MockData.sampleCiv1)
            //.preferredColorScheme(.dark)
        }
    }
}
