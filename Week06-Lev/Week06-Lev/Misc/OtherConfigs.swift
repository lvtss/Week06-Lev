//
//  OtherConfigs.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
import SwiftUI


//Lazy Navigation to load (constructor) after clicked on Button
struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) { self.build = build }
    var body: Content { build() }
}

//icon config
let IMAGE_LMTD_ICON = "limited-icon"
let image_back = "back_icon"
let fav_icon = "fav_icon"

// Travel Images
//let travelJP = "TRAVEL_JP"
//let travelHK = "TRAVEL_HK"
//let travelNP = "TRAVEL_NP"
//let travelUK = "TRAVEL_UK"
//let travelUS = "TRAVEL_US"
//let travelMRC = "TRAVEL_MRC"

let travelJP = "TRAVEL_JP"
let travelHK = "travel_HK"
let travelNP = "Travel_NP"
let travelUK = "TRAVEL_UK"
let travelUS = "TRAVEL_US"
let travelMRC = "TRAVEL_MRC"
