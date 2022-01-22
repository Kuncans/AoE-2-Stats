//
//  UniqueUnit.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import Foundation

//TODO: Fix API Naming
struct UniqueUnit: Decodable, Identifiable {
    let id: Int
    let name: String
    let appetiserDescription: String
    let expansion: String
    let age: String
    let developsIn: String
    let cost: Cost
    let buildTime: Int
    let appliesTo: [String]
}
