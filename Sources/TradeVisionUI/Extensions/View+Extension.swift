//
//  View+Extension.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public extension View {
    func tradeVisionTheme(_ scheme: TradeVisionColorScheme) -> some View {
        self.modifier(TradeVisionThemeEnvironment(colorScheme: scheme))
    }
    
    func tradeVisionCard() -> some View {
        self.modifier(TradeVisionCardModifier())
    }
    
    func tradeVisionBackground(_ modifier: BackgroundModifierType) -> some View {
        self.modifier(TradeVisionBackgroundModifier(modifier: modifier))
    }
    
    func tradeNavigationBar(title: String) -> some View {
        self.modifier(TradeVisionNavigationBarModifier(title: title))
    }
    
    func withSettingsButton(action: @escaping () -> Void) -> some View {
        self.modifier(TradeVisionSettingsButtonModifier(action: action))
    }
}
