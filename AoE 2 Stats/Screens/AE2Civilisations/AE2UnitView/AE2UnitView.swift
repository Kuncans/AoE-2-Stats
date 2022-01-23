//
//  AE2UnitView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

struct AE2UnitView: View {
    
    @StateObject var vM = AE2UnitViewModel()
    
    let civ: Civilisation
    
    var body: some View {
        
        ScrollView(showsIndicators: true) {
            VStack (spacing: 8) {
            }
            .multilineTextAlignment(.center)
            .padding()
            .onAppear {
                vM.getUniqueUnit()
             }
        }
    }
}


struct AE2UnitView_Previews: PreviewProvider {
    static var previews: some View {
        AE2UnitView(civ: MockData.sampleCiv1)
    }
}
