//
//  BackgroundModifierType.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public enum BackgroundModifierType {
    case primaryBackground
    case secondaryBackground
    case cardBackground
    case primaryBlue
    case secondaryBlue
    case accent
    
    func color(for theme: Theme) -> Color {
        switch self {
        case .primaryBackground:
            theme.primaryBackground
        case .secondaryBackground:
            theme.secondaryBackground
        case .cardBackground:
            theme.cardBackground
        case .primaryBlue:
            theme.primaryBlue
        case .secondaryBlue:
            theme.secondaryBlue
        case .accent:
            theme.accent
        }
    }
}
