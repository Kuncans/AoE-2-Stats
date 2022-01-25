//
//  UniqueTech.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 25/01/2022.
//

import Foundation

struct UniqueTech: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let age: String
    let develops_in: String
    let cost: Cost
    let build_time: Int
    
}

struct TechMockData {
    
    static let mockTech = UniqueTech(id: 211,
                                     name: "Garland Fighters",
                                     age: "Imperial",
                                     develops_in: "https://age-of-empires-2-api.herokuapp.com/api/v1/structure/castle",
                                     cost: Cost(Wood: 400, Food: 200),
                                     build_time: 75)
}
