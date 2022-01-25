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

        ZStack(alignment: .top) {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(unit.name)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        Text(building)
                            .foregroundColor(Color.white.opacity(0.7))
                            .padding(.top, 1)
                    }
                    .padding(.top)
                    
                    Spacer()
                    
                    CivIconFormatted(image: "CivIcon-Koreans")
                                        
                }
                
                Spacer()
                
                CostsView(unit: unit)
                
                
            }
            .padding(30)
            .frame(maxWidth: 340)
            .frame(maxHeight: 360)
            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.7)))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 10, x: 0, y: 20)
            
                    
        }
        .padding(.bottom, 32)
        
        
    }
}
    

struct AE2UnitCell_Previews: PreviewProvider {
    static var previews: some View {
        AE2UnitCell(unit: UnitMockData.sampleUnit1, building: "Granary")
            //.preferredColorScheme(.dark)
    }
}
