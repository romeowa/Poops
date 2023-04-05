//
//  HomeViewModel.swift
//  Poops
//
//  Created by howard on 2023/04/05.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var locations: [Location] = []
    
    func addLocation(lat: Double, log: Double) {
        locations.append(Location(latitude: lat, longitude: log))
    }
}
