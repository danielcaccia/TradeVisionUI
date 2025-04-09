//
//  IconColor.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public enum IconColor {
    case iconItem
    case primaryBlue
    case secondaryBlue
    case accent
    case positive
    case negative
    
    func color(for theme: Theme) -> Color {
        switch self {
        case .iconItem:
            theme.iconItem
        case .primaryBlue:
            theme.primaryBlue
        case .secondaryBlue:
            theme.secondaryBlue
        case .accent:
            theme.accent
        case .positive:
            theme.positive
        case .negative:
            theme.negative
        }
    }
}
