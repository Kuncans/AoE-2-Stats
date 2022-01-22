//
//  AE2CivListViewModel.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import SwiftUI

final class AE2CivListViewModel: ObservableObject {
    
    @Published var civilisations: [Civilisation] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var selectedCiv: Civilisation?
    
    func getCivilisations() {
        isLoading = true
        NetworkManager.shared.getCivilisations { result in
            DispatchQueue.main.async {
                self.isLoading = false
                
                switch result {
                case .success(let civilisations):
                    self.civilisations = self.cleanCivilisations(civilisations: civilisations)
                    
                case.failure(let error):
                    switch error {
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        print("invalid data")
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        print("invalid url")
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        print("invalid response")
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                        print("unable to complete")
                        
                    }
                }
            }
        }
    }
    
    func cleanCivilisations(civilisations:[Civilisation]) -> [Civilisation] {
        
        var civClean = civilisations
        
        civClean = civilisations.sorted(by: { $0.name < $1.name } )
        civClean = civClean.filter {$0.id != 22}
        civClean = civClean.filter {$0.id != 26}
        return civClean
        
    }
    
}
