//
//  ObjectsView.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import SwiftUI

struct ObjectsView: View {
    let title: String
    let objects: [Object]
    
    var body: some View {
        List(objects) { object in
            NavigationLink {
                ObjectDetailView(object: object)
            } label: {
                ObjectCellView(object: object)
                    .alignmentGuide(.listRowSeparatorLeading, computeValue: { $0[.leading] })
            }
            
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
    
}

struct ObjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsView(title: "Объекты", objects: [Object.dummy])
            .preferredColorScheme(.dark)
    }
}
