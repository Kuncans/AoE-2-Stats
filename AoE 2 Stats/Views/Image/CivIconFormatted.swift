//
//  CivIconFormatted.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct CivIconFormatted: View {
    
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}

struct CivIconFormatted_Previews: PreviewProvider {
    static var previews: some View {
        CivIconFormatted(image: "CivIcon-Koreans")
    }
}
