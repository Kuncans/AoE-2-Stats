//
//  AE2CivListView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivListView: View {
    
    var mockCivs = MockData.civilisationsSample
    
    var body: some View {
        ZStack {
            NavigationView {
                List(mockCivs) { civ in
                    AE2CivCellView(civ: civ)
                }
                .navigationTitle("Civilisations")
            }
        }
    }
}

struct AE2CivListView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivListView()
            //.preferredColorScheme(.dark)
    }
}
