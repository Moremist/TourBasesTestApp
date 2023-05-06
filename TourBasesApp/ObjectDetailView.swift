//
//  ObjectDetailView.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 06.05.2023.
//

import SwiftUI
import CachedAsyncImage
import CoreLocation

struct ObjectDetailView: View {
    let object: Object
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Text(object.name)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                    
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
                                Text(getDaysString(hour.days) + " : " + hour.from + " - " + hour.to)
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
                open2Gis(lon: object.lon, lat: object.lat)
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(object.close ? .gray : .green)
                        .cornerRadius(15)
                    Text(object.close ? "Сейчас закрыто" : "Проложить маршрут 2Gis")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .frame(height: 50)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .disabled(object.close)
        }
    }
    
    private func getDaysString(_ days: [Int]) -> String {
        guard days.count != 7 else { return "каждый день" }
        let dayString = days.map({ getDayByNumber($0) }).joined(separator: ", ")
        return dayString
    }
    
    private func getDayByNumber(_ number: Int) -> String {
        switch number {
        case 1:
            return "понедельник"
        case 2:
            return "вторник"
        case 3:
            return "среда"
        case 4:
            return "четверг"
        case 5:
            return "пятница"
        case 6:
            return "суббота"
        case 7:
            return "воскресенье"
        default:
            return ""
        }
    }
    
    private func open2Gis(lon: Double, lat: Double) {
        let latitude = CLLocationManager().location?.coordinate.latitude ?? 0.0
        let longitude = CLLocationManager().location?.coordinate.longitude ?? 0.0
        
        guard let gisURL = URL(string: "dgis://2gis.ru/routeSearch/rsType/car/from/\(longitude),\(latitude)/to/\(lon),\(lat)"),
              let gisAppStoreURL = URL(string: "https://itunes.apple.com/ru/app/id481627348?mt=8") else { return }
        if UIApplication.shared.canOpenURL(gisURL) {
            UIApplication.shared.open(gisURL)
        } else {
            UIApplication.shared.open(gisAppStoreURL)
        }
    }
}

struct ObjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectDetailView(object: Object.dummy)
            .preferredColorScheme(.dark)
    }
}
