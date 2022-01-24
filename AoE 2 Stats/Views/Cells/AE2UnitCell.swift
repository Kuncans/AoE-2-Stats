//
//  AE2UnitCell.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 24/01/2022.
//

import SwiftUI

struct AE2UnitCell: View {
    
    let unit: UniqueUnit
    let building: String
    
    var body: some View {
        HStack {
            
            CivIconFormatted(image: "CivIcon-Aztecs")
            
            VStack {
                Text(unit.name)
                    .bold()
                    .font(.title)
                
                Text(building)
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

struct AE2UnitCell_Previews: PreviewProvider {
    static var previews: some View {
        AE2UnitCell(unit: UnitMockData.sampleUnit1, building: "Granary")
    }
}
