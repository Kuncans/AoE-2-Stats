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
        NetworkManager.shared.getCivilisations { [self] result in
            DispatchQueue.main.async {
                isLoading = false
                
                switch result {
                case .success(let civilisations):
                    self.civilisations = civilisations
                    
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
}
