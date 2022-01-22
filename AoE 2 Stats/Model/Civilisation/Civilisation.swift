//
//  Civilisation.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import Foundation

struct Civilisation: Decodable, Identifiable {
    let id: Int
    let name: String
    let expansion: String
    let army_type: String
    let unique_unit: [String]
    let unique_tech: [String]
    let team_bonus: String
    let civilization_bonus: [String]
}

struct CivResponse: Decodable {
    let civilisations: [Civilisation]
}
