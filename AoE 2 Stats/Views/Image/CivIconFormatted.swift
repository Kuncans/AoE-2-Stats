//
//  CivIconFormatted.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct CivIconFormatted: View {
    
    let civ: Civilisation
    
    var body: some View {
        Image("CivIcon-\(civ.name)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}

struct CivIconFormatted_Previews: PreviewProvider {
    static var previews: some View {
        CivIconFormatted(civ: MockData.sampleCiv1)
    }
}
