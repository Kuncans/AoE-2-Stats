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
    let description: String
    let expansion: String
    let age: String
    let created_in: String
    let cost: Cost
    let build_time: Int
    let reload_time: Double
    let attack_delay: Double
    let movement_rate: Double
    let line_of_sight: Int
    let hit_points: Int
    let range: Int
    let attack: Int
    let armor: String
    let attack_bonus: [String]
    let search_radius: Int
    let accuracy: String
}

struct UniqueUnitResponse: Decodable {
    let uniqueUnit: UniqueUnit
}

struct UnitMockData {
    
    static let sampleUnit1 = UniqueUnit(id: 101,
                                        name: "War Wagon",
                                        description: "Korean unique unit. Heavily armored horse-drawn archery unit",
                                        expansion: "The Conquerors",
                                        age: "Castle",
                                        created_in: "https://age-of-empires-2-api.herokuapp.com/api/v1/structure/castle",
                                        cost: Cost(wood: 120, gold: 60),
                                        build_time: 25,
                                        reload_time: 2.5,
                                        attack_delay: 1.0,
                                        movement_rate: 1.2,
                                        line_of_sight: 6,
                                        hit_points: 150,
                                        range: 4,
                                        attack: 9,
                                        armor: "0/3",
                                        attack_bonus: ["+5 buildings"],
                                        search_radius: 6,
                                        accuracy: "100%")
    
}
