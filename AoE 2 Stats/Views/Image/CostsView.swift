//
//  CostsView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 24/01/2022.
//

import SwiftUI

struct CostsView: View {
    
    let cost: Cost
    
    var body: some View {
        HStack (spacing: 36) {
            ResourceView(resource: "wood", resourceAmount: cost.Wood ?? 0)
            ResourceView(resource: "food", resourceAmount: cost.Food ?? 0)
            ResourceView(resource: "gold", resourceAmount: cost.Gold ?? 0)
            ResourceView(resource: "stone", resourceAmount: cost.Stone ?? 0)
        }
        //.padding()
        .frame(maxWidth: .infinity)
        
    }
}

struct CostsView_Previews: PreviewProvider {
    static var previews: some View {
        CostsView(cost: UnitMockData.sampleUnit1.cost)
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
                .frame(width: 30, height: 30)
            Text("\(resourceAmount)")
                .bold()
                .font(.body)
                .italic()
                .foregroundColor(.white)
        }
    }
}
