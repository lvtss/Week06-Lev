//
//  TravelModel.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation

struct ServiceProviderModel {
    var name: String, about: String
}

struct TravelModel: Identifiable {
    var id: Int
    var promo: String
    var image: String
    var activity: String
    var price: String
    var location: String
    var attribute: String
    var reviews: Double
    var serviceProvider: ServiceProviderModel
}
