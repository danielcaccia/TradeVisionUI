//
//  TradeVisionCardModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public struct TradeVisionCardModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    public func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        let shadow = TradeVisionShadow.regular(using: theme)
        
        content
            .padding(TradeVisionSpacing.md)
            .background(theme.cardBackground)
            .cornerRadius(TradeVisionCornerRadius.standard)
            .shadow(color: shadow.color,
                    radius: shadow.radius,
                    x: shadow.x,
                    y: shadow.y)
    }
}
