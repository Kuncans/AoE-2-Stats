//
//  LoadingView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

struct LoadingView: View {
    
    let title: String
    
    var body: some View {
        VStack {
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .theme.accent))
                .scaleEffect(3)
                .offset(y: -10)
            
            Text(title)
                .offset(y: 20)
                .font(.caption)
                .multilineTextAlignment(.center)
                .frame(width: 150)
            
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(title: "This is a test message. Information loading in process.")
    }
}
