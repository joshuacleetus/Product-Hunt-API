//
//  NetworkManager.swift
//  Demo App
//
//  Created by Joshua Cleetus on 12/2/22.
//

import Foundation

class NetworkManager {
    func fetchFilms(completionHandler: @escaping() -> Void) {
        let url = URL(string: "")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("error: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                return
            }
            
            
        }
    }
}


