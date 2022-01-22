//
//  AE2CivCellView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivCellView: View {
    
    let civ: Civilisation
    
    var body: some View {
        HStack {
            
            CivIconFormatted(civ: civ)
            
            VStack {
                Text(civ.name)
                    .bold()
                    .font(.title)
                
                Text(civ.expansion)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
                
            }
            .multilineTextAlignment(.center)
            .frame(width: 200)
            
            Image(systemName: "chevron.right")

            
        }
        .frame(maxWidth: .infinity)
        .padding(.leading)
        .padding(.trailing)
    }
}

struct CivIconFormatted: View {
    
    let civ: Civilisation
    
    var body: some View {
        Image("CivIcon-\(civ.name)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}

struct AE2CivCellView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivCellView(civ: MockData.sampleCiv1)
            //.preferredColorScheme(.dark)
    }
}
