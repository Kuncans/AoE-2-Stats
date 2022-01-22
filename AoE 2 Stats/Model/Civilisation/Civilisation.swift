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
    let civilizations: [Civilisation]
}

struct MockData {
    
    static let sampleCiv1 = Civilisation(id: 0001,
                                        name: "Aztecs",
                                        expansion: "Age of Kings",
                                        army_type: "Infantry and Villager",
                                        unique_unit: ["https://age-of-empires-2-api.herokuapp.com/api/v1/unit/jaguar_warrior"],
                                        unique_tech: ["https://age-of-empires-2-api.herokuapp.com/api/v1/technology/garland_wars"],
                                        team_bonus: "Max holds the middle",
                                        civilization_bonus: ["Villagers are invincible",
                                                             "Knights are actually castles",
                                                             "Town centers are free"])
    
    static let sampleCiv2 = Civilisation(id: 0002,
                                        name: "Britons",
                                        expansion: "The Conquerors",
                                        army_type: "Siege and more Siege",
                                        unique_unit: ["https://age-of-empires-2-api.herokuapp.com/api/v1/unit/woad_raider"],
                                        unique_tech: ["https://age-of-empires-2-api.herokuapp.com/api/v1/technology/furor_celtica"],
                                        team_bonus: "Max holds the middle",
                                        civilization_bonus: ["Villagers instantly die to wolves",
                                                             "Pikemen are not fast enough",
                                                             "Woad raiders have infinite line of sight"])
    
    static let sampleCiv3 = Civilisation(id: 0003,
                                        name: "Indians",
                                        expansion: "Forgotten Empires",
                                        army_type: "Infantry and Cavalry",
                                        unique_unit: ["https://age-of-empires-2-api.herokuapp.com/api/v1/unit/samurai"],
                                        unique_tech: ["https://age-of-empires-2-api.herokuapp.com/api/v1/technology/kataparuto"],
                                        team_bonus: "Galleys have +50% line of sight",
                                        civilization_bonus: ["Cannot build villagers",
                                                             "Trebuchets replaced by slingshots",
                                                             "Higher market rates when selling wood"])
    
    static let civilisationsSample: [Civilisation] = [sampleCiv1, sampleCiv2, sampleCiv3]
}
