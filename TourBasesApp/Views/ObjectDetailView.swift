//
//  ObjectDetailView.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 06.05.2023.
//

import SwiftUI
import CachedAsyncImage

struct ObjectDetailView: View {
    @StateObject var viewModel = ObjectDetailViewModel()
    let object: Object
    
    init(object: Object) {
        self.object = object
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    CachedAsyncImage(url: URL(string: object.image)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical, 20)
                    
                    Divider()
                    
                    Text(object.description)
                        .font(.body)
                        .padding(.vertical, 20)
                    
                    Divider()
                    
                    if let workingHours = object.workingHours {
                        Text("Рабочие часы")
                            .font(.headline)
                            .padding(.top, 5)
                        VStack(alignment: .leading){
                            ForEach(workingHours, id: \.days) { hour in
                                Text(viewModel.getDaysString(hour.days) + " : " + hour.from + " - " + hour.to)
                            }
                        }
                        .padding(.vertical, 5)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            
            Divider()
            
            Button {
                viewModel.open2Gis(lon: object.lon, lat: object.lat)
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.green)
                        .cornerRadius(15)
                    
                    Text("Проложить маршрут 2Gis")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .frame(height: 50)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
        .navigationTitle(object.name)
    }
}

struct ObjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectDetailView(object: Object.dummy)
            .preferredColorScheme(.dark)
    }
}
