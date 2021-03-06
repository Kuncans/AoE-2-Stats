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
            
            CivIconFormatted(image: "CivIcon-\(civ.name)")
            
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
            
           // Image(systemName: "chevron.right")

            
        }
        .padding(.leading)
        .padding(.trailing)

    }
}



struct AE2CivCellView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivCellView(civ: MockData.sampleCiv1)
            //.preferredColorScheme(.dark)
    }
}
