//
//  AE2CivBonusCell.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivBonusCell: View {
    
    let civ: Civilisation
    
    var body: some View {
        
        VStack {
            ForEach(civ.civilization_bonus, id:\.self) { bonus in
                HStack {
                    Image(systemName: "plus.circle").foregroundColor(Color.theme.green)
                        .frame(width: 12, height: 12)

                    Text(bonus)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, alignment: .leading)
                        .padding(.leading)
                }
                .frame(maxWidth: .infinity)
                .padding(.leading)
                .padding(.trailing)
                
            }.listStyle(.plain)
        }
    }
}

struct AE2CivBonusCell_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivBonusCell(civ: MockData.sampleCiv1)
            //.preferredColorScheme(.dark)
    }
}
