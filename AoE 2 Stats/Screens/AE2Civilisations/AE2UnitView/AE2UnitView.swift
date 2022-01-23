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
    
    let civ: Civilisation
    
    var body: some View {
        
        ScrollView(showsIndicators: true) {
           
            VStack (spacing: 8) {
                
                ForEach(vM.uniqueUnit) { unit in
                    Text(unit.name)
                }

            }
            .multilineTextAlignment(.center)
            .padding()
            .onAppear {
                //TODO: Check for nil value
                if !civ.unique_unit.isEmpty {
                    vM.getUniqueUnit(unitUrl: civ.unique_unit)
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
