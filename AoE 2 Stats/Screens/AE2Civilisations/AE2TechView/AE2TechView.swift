//
//  AE2TechView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 25/01/2022.
//

import SwiftUI

struct AE2TechView: View {
    
    @StateObject var vM = AE2UnitViewModel()
    
    @State private var foundTech: Bool = false
    @State private var createdIn = ""
    
    let civ: Civilisation
    
    var body: some View {
        
        ScrollView {
            ZStack {
                
                VStack (spacing: 32) {
                    
                    
                        ForEach(vM.uniqueTech) { tech in
                           //AE2UnitCell(unit: tech,
                                       // building: vM.getCreatedBuilding(unit: unit) ?? "Unknown Building")
                            Text(tech.name)
                        }
                    
                    
                }
                .multilineTextAlignment(.center)
                .padding()
                .onAppear {
                    if !civ.unique_tech.isEmpty && !foundTech {
                        vM.getUniqueTech(techUrl: civ.unique_tech)
                        foundTech = true
                    }
                }
                
                if vM.isLoading {
                    LoadingView(title: "Fetching Units...")
                }
                
                if civ.unique_unit == [] {
                    Text("Empty State")
                }
            }
        }
    }
}


struct AE2TechView_Previews: PreviewProvider {
    static var previews: some View {
        AE2TechView(civ: MockData.sampleCiv1)
    }
}
