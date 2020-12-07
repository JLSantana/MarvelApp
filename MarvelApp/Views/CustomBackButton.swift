//
//  CustomBackButton.swift
//  MarvelApp
//
//  Created by Jose on 12/4/20.
//

import SwiftUI

struct CustomBackButton: View {
    private let name: String
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    init(name: String?) {
        self.name = name ?? Constants.HERO_DEFAULT_NAME
    }
    
    var body: some View {
        Button(action: {
            self.mode.wrappedValue.dismiss()
        }) {
            HStack {
                if (colorScheme == .dark) {
                    Image(systemName: "arrow.left")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                    Text(name).foregroundColor(.white)
                } else {
                    Image(systemName: "arrow.left")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.black)
                    Text(name).foregroundColor(.black)
                }
                
            }
        }
    }
}
