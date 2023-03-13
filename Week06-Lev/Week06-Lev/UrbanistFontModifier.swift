//
//  UrbanistFontModifier.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
import SwiftUI

enum UrbansitFontType: String {
    case regular = "Urbanist-Regular"
    case medium = "Urbanist-Medium"
    case thin = "Urbanist-Thin"
    case semiBold = "Urbanist-SemiBold"
    case bold = "Urbanist-Bold"
}

struct UrbansitFont: ViewModifier {

    var type: UrbansitFontType
    var size: CGFloat

    init(_ type: UrbansitFontType = .regular, size: CGFloat = 16) {
        self.type = type
        self.size = size
    }

    func body(content: Content) -> some View {
        content.font(Font.custom(type.rawValue, size: size))
    }
}
