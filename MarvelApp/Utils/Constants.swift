//
//  Constants.swift
//  MarvelApp
//
//  Created by Jose on 12/3/20.
//

import Foundation

struct Constants {
    
    // Content View
    static let CONTENT_TITLE = "Marvel"
    static let CONTENT_FONT_NAME = "AvengeroRegular-zvgl"
    static let SERVER_UNAVAILABLE = "El servidor no está disponible"
    
    // Row View
    static let IMAGE_PLACEHOLDER = "Placeholder"
    
    // CharactersViewModel
    static let MARVEL_URL = "https://gateway.marvel.com/v1/public/characters?ts="
    // TODO This should be in the server side
    static let MARVEL_PRIVATE_KEY = "" // Insert Private Key
    static let MARVEL_PUBLIC_KEY = "" // Insert Public Key
    
    // HeroDetailsView
    static let HERO_DEFAULT_NAME = "No Name"
    static let HERO_DEFAULT_DESCRIPTION = "This hero have no details"
}
