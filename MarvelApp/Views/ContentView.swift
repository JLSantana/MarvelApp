//
//  ContentView.swift
//  MarvelApp
//
//  Created by Jose on 12/1/20.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @ObservedObject var charactersVM = CharactersViewModel()
    
    init() {
        charactersVM.fetchCharacters()
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.systemFont(ofSize: 25, weight: .heavy)]
    }
    
    var body: some View {
        NavigationView {
            List {
                if (charactersVM.characters.isEmpty) {
                    Text(Constants.SERVER_UNAVAILABLE)
                } else {
                    ForEach(charactersVM.characters) {hero in
                        RowView(hero: hero)
                            .listRowInsets(EdgeInsets())
                            .edgesIgnoringSafeArea(.horizontal)
                    }
                }
            }.navigationBarTitle(Text(Constants.CONTENT_TITLE), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
