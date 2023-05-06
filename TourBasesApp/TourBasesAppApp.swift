//
//  TourBasesAppApp.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import SwiftUI
import CoreLocation

@main
struct TourBasesAppApp: App {
    var body: some Scene {
        WindowGroup {
            CategoriesView()
                .onAppear {
                    CLLocationManager().requestWhenInUseAuthorization()
                }
                .preferredColorScheme(.dark)
        }
    }
}
