//
//  TravelData.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation

struct TravelData {
static let serviceProvider = ServiceProviderModel(name: "Thomas Cook Travels", about: "est. 1978 - Great travellers know best")
static let serviceProvider2 = ServiceProviderModel(name: "Great Adventures LTD", about: "est. 1978")
    
static let destinations = [
        TravelModel(id: 124, promo: "Cotswolds Day Tour with a typical British lunch in a 17th Century Inn", image: travelUK, activity: "Tour", price: "US$ 131.25", location: "UK", attribute: "Best Seller", reviews: 5.0, serviceProvider: serviceProvider),

        TravelModel(id: 222, promo: "Kathmandu Full Day Exploration", image: travelNP, activity: "Tour", price: "US$ 45.00", location: "Nepal", attribute: "Good Deal", reviews: 4.2, serviceProvider: serviceProvider2),

        TravelModel(id: 785, promo: "Miyazaki Guided Day Tour from Fukuoka", image: travelJP,  activity: "Tour", price: "US$ 82.59", location: "Japan", attribute: "Best Seller", reviews: 4.9,  serviceProvider: serviceProvider),
        
        TravelModel(id: 485, promo: "Hong Kong Ocean Park Bus Tour", image: travelHK, activity: "Theme Park", price: "US$ 46.49", location: "Hong Kong", attribute: "Good Deal", reviews: 3.8, serviceProvider: serviceProvider2),
        
        TravelModel(id: 452, promo: "Los Angeles and Hollywood Daytime Flight Tour", image: travelUS, activity: "In the Air", price: "US$ 139.50", location: "USA", attribute: "Best Seller", reviews: 4.1, serviceProvider: serviceProvider2),
        
        TravelModel(id: 369, promo: "Marrakech Full Day Tour with Camel Ride from Casablanca", image: travelMRC, activity: "Tour", price: "US$ 105.05",  location: "Morocco", attribute: "Good Deal", reviews: 3.2, serviceProvider: serviceProvider)
    ]
}
