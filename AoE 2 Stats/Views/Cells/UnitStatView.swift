//
//  UnitStatView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 25/01/2022.
//

import SwiftUI

struct UnitStatView: View {
    
    let statImage: String
    let statTitle: String
    let statValue: String
    
    var body: some View {
        HStack  {
            
            Text(statTitle)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)

            
            Spacer()
            
            Image(statImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height:  32)
                .padding(.horizontal)
            
            
            Text(statValue)
                .font(.body)
                .bold()
                .foregroundColor(.white)
                .padding(.trailing)
                .frame(width: 70)
            
            
           
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        
    }
}

struct UnitStatView_Previews: PreviewProvider {
    static var previews: some View {
        UnitStatView(statImage: "wood", statTitle: "Attack", statValue: "10")
            .preferredColorScheme(.dark)
    }
}
