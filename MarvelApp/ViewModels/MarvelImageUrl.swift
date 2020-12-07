//
//  ImageUrl.swift
//  MarvelApp
//
//  Created by Jose on 12/2/20.
//

import SwiftUI
import Combine

class MarvelImageUrl: ObservableObject {
    @Published var data = Data()
    
    func fetchImage(thumbnail: MarvelImage?) {
        let urlString = "\(thumbnail?.path ?? "").\(thumbnail?.extension ?? "")"
        print(urlString)
        
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
                    self.data = data
                }
            } else {
                print("HTTPURLResponse code: \(response.statusCode)")
            }
        }.resume()
    }
}
