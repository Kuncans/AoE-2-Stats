//
//  AE2UnitViewModel.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

final class AE2UnitViewModel: ObservableObject {
 
    @Published var uniqueUnit: [UniqueUnit] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var selectedCiv: Civilisation?
    
    
    func getUniqueUnit(unitUrl: [String]) {
        
        print(self.uniqueUnit)
        
        for uniturl in unitUrl {
            isLoading = true
        
            NetworkManager.shared.getUniqueUnit(unitURL: uniturl) { result in
                DispatchQueue.main.async {
                    self.isLoading = false
                    
                    switch result {
                    case .success(let uniqueUnit):
                        self.uniqueUnit.append(uniqueUnit)
                        //uniqueUnit ?? UnitMockData.sampleUnit1
                        
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

}
    

