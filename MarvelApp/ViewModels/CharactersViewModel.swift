//
//  CharactersViewModel.swift
//  MarvelApp
//
//  Created by Jose on 12/2/20.
//

import Foundation
import SwiftUI
import CryptoSwift

class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    
    func fetchCharacters() {
        
        let ts: Int = Date().hashValue
        
        let hash: String = (ts.description + Constants.MARVEL_PRIVATE_KEY + Constants.MARVEL_PUBLIC_KEY).md5()
        
        let urlString: String = "\(Constants.MARVEL_URL)\(ts)&apikey=\(Constants.MARVEL_PUBLIC_KEY)&hash=\(hash)"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                guard let data = data else { return }
                
                DispatchQueue.main.async {
                    do {
                        let decoded = try JSONDecoder().decode(MarvelCharacterWrapper.self, from: data)
                        self.characters = (decoded.data?.results!)!
                    } catch let error {
                        print("Error: \(error)")
                    }
                }
            } else {
                print("HTTPURLResponse code: \(response.statusCode)")
            }
        }.resume()
    }
}
