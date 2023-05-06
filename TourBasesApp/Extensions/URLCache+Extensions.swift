//
//  URLCache+Extensions.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 06.05.2023.
//

import Foundation

extension URLCache {
    static let imageCache = URLCache(memoryCapacity: 512*1000*1000, diskCapacity: 10*1000*1000*1000)
}
