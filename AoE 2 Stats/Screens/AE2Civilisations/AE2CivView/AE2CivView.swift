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
        NavigationView {
            VStack {
                Image("CivIcon-\(civ.name)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                
                Text(civ.expansion)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    
                
                Spacer()
            }.navigationTitle("Civilisation")
        }
    }
}

struct AE2CivView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivView(civ: MockData.sampleCiv1)
    }
}
