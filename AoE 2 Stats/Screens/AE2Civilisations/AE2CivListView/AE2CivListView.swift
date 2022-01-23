//
//  AE2CivListView.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

struct AE2CivListView: View {
    
    @StateObject var vM = AE2CivListViewModel()
        
    var body: some View {
        ZStack {
            NavigationView {
                List(vM.civilisations) { civ in
                    NavigationLink(
                        destination: AE2CivView(civ: civ),
                        label: { AE2CivCellView(civ: civ) })
                }.listStyle(.plain)
                .navigationTitle("Civilisations")
            }.onAppear {
                vM.getCivilisations()
            }
            
            if vM.isLoading {
                
                VStack {
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .theme.accent))
                        .scaleEffect(3)
                        .offset(y: -10)
                    
                    Text("Fetching Civilisation Information")
                        .offset(y: 20)
                        .font(.caption)
                    
                }
                
            }
            
        }
        .navigationViewStyle(.stack)
        .alert(item: $vM.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AE2CivListView_Previews: PreviewProvider {
    static var previews: some View {
        AE2CivListView()
            //.preferredColorScheme(.dark)
    }
}
