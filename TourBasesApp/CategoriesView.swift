//
//  CategoriesView.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import SwiftUI

struct CategoriesView: View {
    @ObservedObject var viewModel = CategoriesViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if let response = viewModel.response {
                    ForEach(response.data.categories, id: \.name) { category in
                        NavigationLink {
                            ObjectsView(title: category.name, objects: response.data.objects.filter { $0.type == category.type })
                        } label: {
                            HStack {
                                Text(category.name)
                                Spacer()
                                ZStack {
                                    Circle()
                                        .foregroundColor(
                                            CSSColors.getColorBy(name: category.color)
                                        )
                                    Text(category.count.description)
                                }
                                .frame(height: 35)
                            }
                        }
                        .frame(height: 40)
                    }
                    .listRowBackground(Color.black)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Категории")
        }
        .task {
            await viewModel.fetchBasesData()
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .preferredColorScheme(.dark)
    }
}
