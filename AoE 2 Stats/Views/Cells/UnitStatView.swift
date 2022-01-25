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
        HStack {
         
            Image(statImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height:  32)
                .padding(.leading)
            
            Text(statTitle)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.white)
          
            Spacer()
            
            Text(statValue)
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding(.trailing)
        }
        .frame(maxWidth: .infinity)
        //.background(.gray)
        .padding(.horizontal)
    }
}

struct UnitStatView_Previews: PreviewProvider {
    static var previews: some View {
        UnitStatView(statImage: "wood", statTitle: "Attack", statValue: "10")
    }
}
