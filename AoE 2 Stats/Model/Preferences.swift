//
//  Preferences.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 23/01/2022.
//

import SwiftUI

final class Preferences: ObservableObject {
    
    @AppStorage("userID") private var userID: Data?
    
    @Published var user = ""
    
    
    
    
}
