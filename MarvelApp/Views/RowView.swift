//
//  RowView.swift
//  MarvelApp
//
//  Created by Jose on 12/2/20.
//

import SwiftUI
import Combine

struct RowView: View {
    private let hero: Character
    @ObservedObject var marvelImageUrl = MarvelImageUrl()
    
    init(hero: Character?) {
        self.hero = hero ?? Character()
        marvelImageUrl.fetchImage(thumbnail: hero?.thumbnail ?? MarvelImage())
    }
    
    var body: some View {
        ZStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Image(uiImage: ((self.marvelImageUrl.data.isEmpty) ? UIImage(named: Constants.IMAGE_PLACEHOLDER) : UIImage(data: self.marvelImageUrl.data))!)
                .resizable()
                .aspectRatio(16/9, contentMode: .fill)
                .padding(.bottom, 2.0)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 3, y: 3)
                .overlay(ImageOverlay(name: self.hero.name ?? Constants.HERO_DEFAULT_NAME), alignment: .bottomLeading)
                .animation(.easeInOut)
            NavigationLink(destination: HeroDetailsView(hero: hero, image: marvelImageUrl.data)) {
                EmptyView()
            }.opacity(0)
        }
    }
}
