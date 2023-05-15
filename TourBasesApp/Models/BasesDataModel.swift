//
//  BasesDataModel.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import Foundation

// MARK: - Response
struct BasesDataModel: Codable {
    let success: Bool
    let time: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable  {
    let geo: Geo
    let categories: [Category]
    let objects: [Object]
}

// MARK: - Geo
struct Geo: Codable  {
    let lat, lon: Double
}

struct Category: Codable, Hashable  {
    let name, type, icon, color: String
    let count: Int
}

struct Object: Codable, Identifiable  {
    let id: Int
    let name, description, type, icon, color, image: String
    let close: Bool
    let lat, lon: Double
    let workingHours: [WorkingHour]?
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, image, type, close, icon, color, lat, lon
        case workingHours = "working_hours"
    }
    
    static let dummy = Object(
        id: 122,
        name: "Китайская кухня У Яши",
        description: "Вкусно и быстро!",
        type: "food",
        icon: "rst-food-fork-drink",
        color: "warning-10",
        image: "https://rsttur.ru/file/crop_61079c8004f4a2.89571598.jpeg",
        close: false,
        lat: 42.650764978649356,
        lon: 131.12620644849042,
        workingHours: [WorkingHour(days: [2,4,5], from: "7:00", to: "20:00"), WorkingHour(days: [1,3,6], from: "7:00", to: "21:00")]
    )
}

struct WorkingHour: Codable {
    let days: [Int]
    let from, to: String
}
