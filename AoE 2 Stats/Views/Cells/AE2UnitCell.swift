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
                        
                        HStack{
                            Text(building)
                                .foregroundColor(Color.white.opacity(0.7))
                                .padding(.top, 1)
                            Image(building)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                                .cornerRadius(8)
                        }
                       
                    }.padding(.top)
                    
                    
                    Spacer()
                    
                    CivIconFormatted(image: "\(unit.name)")
                        .border(.white, width: 2)
                        .cornerRadius(4)
                        
                    
                }.padding(.top)
                
                UnitStatView(statImage: "damage",
                             statTitle: "Attack",
                             statValue: "\(unit.attack)")
                
                UnitStatView(statImage: "hp",
                             statTitle: "Hitpoints",
                             statValue: "\(unit.hit_points)")
                
                UnitStatView(statImage: "armor",
                             statTitle: "Armor",
                             statValue: "\(unit.armor)")
                
                UnitStatView(statImage: "build",
                             statTitle: "Build Time",
                             statValue: "\(unit.build_time)")
                
                UnitStatView(statImage: "speed",
                             statTitle: "Movement Rate",
                             statValue: "\(unit.movement_rate)")
                
                UnitStatView(statImage: "los",
                             statTitle: "Line of Sight",
                             statValue: "\(unit.line_of_sight)")
                
                Spacer()
                
                Text("Cost")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top)
                
                CostsView(unit: unit)
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
