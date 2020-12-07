//
//  MarvelApiCall.swift
//  MarvelApp
//
//  Created by user185710 on 12/1/20.
//

import Foundation

struct MarvelApiCall {
    
    let domainUrlString = "https://gateway.marvel.com:443/v1/public/"
    let characters = "characters?"
    let apiKey = "16425fd5a5d42d77e82b1cc6181a672e"
    
    static func fetchCharacters() {
        
        let urlCharacters = domainUrlString + characters + "apikey=" + apiKey
        
        var request = URLRequest(url: URL(string: urlCharacters)!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
            } catch {
                print("error")
            }
        })

        task.resume()
    }
}
