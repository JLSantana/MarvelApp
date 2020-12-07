//
//  HeroDetailsView.swift
//  MarvelApp
//
//  Created by Jose on 12/3/20.
//

import SwiftUI

struct HeroDetailsView: View {
    private let image: Data
    
    private var name: String
    private var description: String
    
    @Environment(\.presentationMode) var presentationMode
    
    init(hero: Character?, image: Data?) {
        self.image = image ?? Data()
        
        name = hero?.name ?? Constants.HERO_DEFAULT_NAME
        description = hero?.description ?? Constants.HERO_DEFAULT_DESCRIPTION
        
        if name.isEmpty {
            name = Constants.HERO_DEFAULT_NAME
        }
        if description.isEmpty {
            description = Constants.HERO_DEFAULT_DESCRIPTION
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: ((self.image.isEmpty) ? UIImage(named: Constants.IMAGE_PLACEHOLDER) : UIImage(data: self.image))!)
                .resizable()
                .aspectRatio(576/486, contentMode:.fill)
            Spacer()
            ScrollView {
                HStack() {
                    Text("\(name)\n\n\(description)").foregroundColor(.white).padding(.horizontal)
                    Spacer()
                }
            }
        }.background(Color.init(red: 56/255, green: 54/255, blue: 54/255))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton(name: name))
    }
}
