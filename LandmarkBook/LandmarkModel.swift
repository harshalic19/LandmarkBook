//
//  LandmarkModel.swift
//  LandmarkBook
//
//  Created by Harshali Chaudhari on 28/06/24.
//

import SwiftUI
import CoreLocation

struct LandmarkModel: Identifiable {
    var id: UUID = UUID()
    var country: String
    var imageName: String
    var landmark: String
    var builtIn: String
    var coordinates: Coordinates
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}

let landmark1 = LandmarkModel(country: "France", imageName: "Arc de Triomphe", landmark: "Arc de Triomphe", builtIn: "1982", coordinates: Coordinates(latitude: 48.873756, longitude: 2.294946))
let landmark2 = LandmarkModel(country: "Hungary", imageName: "Buda Castle", landmark: "Buda Castle", builtIn: "14th–20th century", coordinates: Coordinates(latitude: 47.496208, longitude: 19.039452))
let landmark3 = LandmarkModel(country: "Rome", imageName: "Colosseum", landmark: "Colosseum", builtIn: "80 AD",coordinates: Coordinates(latitude: 41.890251, longitude: 12.492373))
let landmark4 = LandmarkModel(country: "England", imageName: "LondonBridge", landmark: "LondonBridge", builtIn: "1973",coordinates: Coordinates(latitude: 51.507889, longitude: -0.087837))

let landmarkArray = [landmark1, landmark2, landmark3, landmark4]
