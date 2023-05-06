//
//  ObjectDetailViewModel.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 06.05.2023.
//

import SwiftUI
import CoreLocation

class ObjectDetailViewModel: ObservableObject {
    func getDaysString(_ days: [Int]) -> String {
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
    
    func open2Gis(lon: Double, lat: Double) {
        let userLatitude = CLLocationManager().location?.coordinate.latitude ?? 0.0
        let userLongitude = CLLocationManager().location?.coordinate.longitude ?? 0.0
        
        guard let gisURL = URL(string: "dgis://2gis.ru/routeSearch/rsType/car/from/\(userLongitude),\(userLatitude)/to/\(lon),\(lat)"),
              let gisAppStoreURL = URL(string: "https://itunes.apple.com/ru/app/id481627348?mt=8") else { return }
        if UIApplication.shared.canOpenURL(gisURL) {
            UIApplication.shared.open(gisURL)
        } else {
            UIApplication.shared.open(gisAppStoreURL)
        }
    }
}
