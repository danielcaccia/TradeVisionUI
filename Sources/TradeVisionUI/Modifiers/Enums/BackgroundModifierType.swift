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
    case accent
    
    func color(for theme: Theme) -> Color {
        switch self {
        case .primaryBackground:
            theme.primaryBackground
        case .secondaryBackground:
            theme.secondaryBackground
        case .cardBackground:
            theme.cardBackground
        case .accent:
            theme.accent
        }
    }
}
