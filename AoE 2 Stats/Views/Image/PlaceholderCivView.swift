//
//  PlaceholderCivView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct PlaceholderCivView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .strokeBorder(Color.primary, lineWidth: 3)
                .frame(width: 70, height: 70)
            
            Image(systemName: "shield.slash.fill")
                .resizable()
                .padding()
            
        }
        .frame(width: 80, height: 80)
    }
}

struct PlaceholderCivView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderCivView()
    }
}
