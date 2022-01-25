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
        
        let screen = UIScreen.main.bounds
        
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
                    }.padding(.top)
                    
                    
                    Spacer()
                    
                    CivIconFormatted(image: "\(unit.name)")
                        .border(.white, width: 2)
                        .cornerRadius(4)
                        
                    
                }.padding(.top)
                
                UnitStatView(statImage: "wood",
                             statTitle: "Attack",
                             statValue: "\(unit.attack)")
                
                UnitStatView(statImage: "wood",
                             statTitle: "Hitpoints",
                             statValue: "\(unit.hit_points)")
                
                UnitStatView(statImage: "wood",
                             statTitle: "Armor",
                             statValue: "\(unit.armor)")
                
                UnitStatView(statImage: "wood",
                             statTitle: "Build Time",
                             statValue: "\(unit.build_time)")
                
                UnitStatView(statImage: "wood",
                             statTitle: "Movement Rate",
                             statValue: "\(unit.movement_rate)")
                
                UnitStatView(statImage: "wood",
                             statTitle: "Line of Sight",
                             statValue: "\(unit.line_of_sight)")
                
                Spacer()
                
                CostsView(unit: unit)
                    .padding(.top)
                    .padding(.bottom, 20)
                
                
            }
            .padding(20)
            .frame(maxWidth: screen.width - 20)
            .frame(maxHeight: 470)
            .background(Color.theme.accent.opacity(0.6))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 20)
        }
        .padding(.bottom, 18)
        
        
    }
}


struct AE2UnitCell_Previews: PreviewProvider {
    static var previews: some View {
        AE2UnitCell(unit: UnitMockData.sampleUnit1, building: "Granary")
        //.preferredColorScheme(.dark)
    }
}
