//
//  NetworkManager.swift
//  AoE 2 Stats
//
//  Created by Duncan Kent on 22/01/2022.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://age-of-empires-2-api.herokuapp.com/api/v1/"
    private let civURL = baseURL + "civilizations"
    
    private init() {}
    
    func getCivilisations(completed: @escaping (Result<[Civilisation], NetworkError>) -> Void) {
        
        guard let url = URL(string: civURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(CivResponse.self, from: data)
                completed(.success(decodedResponse.civilizations))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
        
    }
    
    func getUniqueUnit(unitURL: String, completed: @escaping (Result<UniqueUnit, NetworkError>) -> Void) {
        
        guard let url = URL(string: unitURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(UniqueUnit.self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
        
    }
    
    func getUniqueTech(techURL: String, completed: @escaping (Result<UniqueTech, NetworkError>) -> Void) {
        
        guard let url = URL(string: techURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(UniqueTech.self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
        
    }
    
}
