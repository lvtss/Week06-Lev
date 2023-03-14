//
//  TravelDetailsData.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
import SwiftUI

class TravelDetailsModel: ObservableObject {
    
    let model: TravelModel
    
    let details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    init(model: TravelModel) { self.model = model }
    
    func favouriteMethod() {  }
    
    func contactUsMethod() {  }
    
    func buyMethod() {  }
}

