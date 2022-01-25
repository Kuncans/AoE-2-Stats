//
//  AE2UnitView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

struct AE2UnitView: View {
    
    @StateObject var vM = AE2UnitViewModel()
    
    @State private var foundUnit: Bool = false
    @State private var createdIn = ""
    
    let civ: Civilisation
    
    var body: some View {
        
        ScrollView {
            ZStack {
                
                VStack (spacing: 32) {
                    
                    
                        ForEach(vM.uniqueUnit) { unit in
                            AE2UnitCell(unit: unit,
                                        building: vM.getCreatedBuilding(unit: unit) ?? "Unknown Building")
                        }
                    
                    
                }
                .multilineTextAlignment(.center)
                .padding()
                .onAppear {
                    if !civ.unique_unit.isEmpty && !foundUnit {
                        vM.getUniqueUnit(unitUrl: civ.unique_unit)
                        foundUnit = true
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


struct AE2UnitView_Previews: PreviewProvider {
    static var previews: some View {
        AE2UnitView(civ: MockData.sampleCiv1)
    }
}
