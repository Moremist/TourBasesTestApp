//
//  ObjectCellView.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import SwiftUI
import CachedAsyncImage

struct ObjectCellView: View {
    let object: Object
    
    var body: some View {
        HStack(spacing: 0) {
            if let imageURL = URL(string: object.image) {
                CachedAsyncImage(url: imageURL, urlCache: .imageCache) { image in
                    image
                        .resizable()
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 6)
            }
            
            VStack(alignment: .leading) {
                Text(object.name)
                    .font(.headline)
                Text(object.description)
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(.leading, 20)
            
            Spacer()
        }
        .padding()
        .frame(height: 120)
    }
}

struct ObjectCellView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectCellView(object: Object.dummy)
            .preferredColorScheme(.dark)
    }
}
