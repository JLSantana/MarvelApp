//
//  MarvelCharacterWrapper.swift
//  MarvelApp
//
//  Created by Jose on 12/1/20.
//

import SwiftUI

struct MarvelCharacterWrapper: Codable {
//    var code: Int?
//    var status: String?
//    var copyright: String?
//    var attributionText: String?
//    var attributionHTML: String?
    var data: CharacterDataContainer?
//    var etag: String?
}

struct CharacterDataContainer: Codable {
//    var offset: Int?
//    var limit: Int?
//    var total: Int?
//    var count: Int?
    var results: [Character]?
}

struct Character: Codable, Identifiable {
    var id: Int?
    var name: String?
    var description: String?
//    var modified: String?
//    var resourceURI: String?
//    var urls: [Url]?
    var thumbnail: MarvelImage?
//    var comics: ComicList?
//    var stories: StoryList?
//    var events: EventList?
//    var series: SeriesList?
}

//struct Url: Codable {
//    var type: String?
//    var url: String?
//}

struct MarvelImage: Codable {
    var path: String?
    var `extension`: String?
}

//struct ComicList: Codable {
//    var available: Int?
//    var returned: Int?
//    var collectionURI: String?
//    var items: [ComicSummary]?
//}
//
//struct ComicSummary: Codable {
//    var resourceURI: String?
//    var name: String?
//}
//
//struct StoryList: Codable {
//    var available: Int?
//    var returned: Int?
//    var collectionURI: String?
//    var items: [StorySummary]?
//}
//
//struct StorySummary: Codable {
//    var resourceURI: String?
//    var name: String?
//    var type: String
//}
//
//struct EventList: Codable {
//    var available: Int?
//    var returned: Int?
//    var collectionURI: String?
//    var items: [EventSummary]?
//}
//
//struct EventSummary: Codable {
//    var resourceURI: String?
//    var name: String?
//}
//
//struct SeriesList: Codable {
//    var available: Int?
//    var returned: Int?
//    var collectionURI: String?
//    var items: [SeriesSummary]?
//}
//
//struct SeriesSummary: Codable {
//    var resourceURI: String?
//    var name: String?
//}
