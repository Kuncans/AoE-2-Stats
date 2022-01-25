//
//  AE2TechCell.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 25/01/2022.
//

import SwiftUI

struct AE2TechCell: View {
    
    let tech: UniqueTech
    let building: String
    

        var body: some View {
            
            let screen = UIScreen.main.bounds
            
            ZStack(alignment: .top) {
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text(tech.name)
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
                        
                        CivIconFormatted(image: "\(tech.age)AgeUnique")
                            .border(.white, width: 2)
                            .cornerRadius(4)
                            
                        
                    }.padding(.top)
                    
                    UnitStatView(statImage: "\(tech.age)Age",
                                 statTitle: "\(tech.age) Age",
                                 statValue: "")
                        
                    
                    UnitStatView(statImage: "build",
                                 statTitle: "Build Time",
                                 statValue: "\(tech.build_time)s")
                                        
                    Spacer()
                    
                    Text("Cost")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    CostsView(cost: tech.cost)
                    
                    
                }
                .padding(20)
                .frame(maxWidth: screen.width - 20)
                .frame(maxHeight: 470)
                .background(Color.theme.accent.opacity(0.6))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 20)

            }
           
            .padding(.bottom, 12)
            
            
        }
    }


struct AE2TechCell_Previews: PreviewProvider {
    static var previews: some View {
        AE2TechCell(tech: TechMockData.mockTech, building: "Castle")
    }
}
