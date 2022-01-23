//
//  AE2CivView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivView: View {
    
    let civ: Civilisation
    
    var body: some View {
        
        ScrollView(showsIndicators: true) {
            VStack (spacing: 8) {
                
                Text(civ.name)
                    .font(.title)
                    .fontWeight(.bold)
                    
                Image("CivIcon-\(civ.name)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    
                Text(civ.expansion)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                        
                Text("\(civ.army_type) civilisation")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .frame(maxWidth: 300)

                Text("Team Bonuses:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: 300)
                    .padding(.top)
                
                Text(civ.team_bonus)
                    .font(.caption)
                    .foregroundColor(Color.theme.green)
                
                Text("Civ Bonus:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: 300)
                    .padding(.top)
                
                AE2CivBonusCell(civ: civ)
                
            }
            .multilineTextAlignment(.center)
        .padding()
        }
    }
}

struct AE2CivView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivView(civ: MockData.sampleCiv1)
    }
}
