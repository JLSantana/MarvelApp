//
//  ImageOverlay.swift
//  MarvelApp
//
//  Created by Jose on 12/2/20.
//

import SwiftUI

struct ImageOverlay: View {
    
    private var name: String
    
    init (name: String) {
        self.name = name
    }
    
    var body: some View {
        ZStack {
            Text(name)
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}
