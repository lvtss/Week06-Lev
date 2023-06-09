//
//  HomeViewModel.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {

    @Published var travelList = [TravelModel]()

    init() { fetchTravelList() }

    func fetchTravelList() { travelList = TravelData.destinations }
}
