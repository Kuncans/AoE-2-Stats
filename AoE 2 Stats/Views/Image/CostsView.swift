//
//  CostsView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 24/01/2022.
//

import SwiftUI

struct CostsView: View {
    
    let unit: UniqueUnit
    
    var body: some View {
        HStack (spacing: 36) {
            ResourceView(resource: "wood", resourceAmount: unit.cost.Wood ?? 0)
            ResourceView(resource: "food", resourceAmount: unit.cost.Food ?? 0)
            ResourceView(resource: "gold", resourceAmount: unit.cost.Gold ?? 0)
            ResourceView(resource: "stone", resourceAmount: unit.cost.Stone ?? 0)
        }
        //.padding()
        .frame(maxWidth: .infinity)
        
    }
}

struct CostsView_Previews: PreviewProvider {
    static var previews: some View {
        CostsView(unit: UnitMockData.sampleUnit1)
    }
}

struct ResourceView: View {
    
    let resource: String
    let resourceAmount: Int
    
    var body: some View {
        VStack {
            Image(resource)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 34, height: 34)
            Text("\(resourceAmount)")
                .bold()
                .font(.body)
                .italic()
                .foregroundColor(.white)
            
        }
    }
}
