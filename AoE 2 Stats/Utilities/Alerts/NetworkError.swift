//
//  NetworkError.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
