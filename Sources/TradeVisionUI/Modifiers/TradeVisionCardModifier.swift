//
//  TradeVisionCardModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

struct TradeVisionCardModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    private let padding: CGFloat
    
    init(_ padding: CGFloat) {
        self.padding = padding
    }
    func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        let shadow = TradeVisionShadow.regular(using: theme)
        
        content
            .padding(padding)
            .background(theme.cardBackground)
            .cornerRadius(TradeVisionCornerRadius.standard)
            .shadow(color: shadow.color,
                    radius: shadow.radius,
                    x: shadow.x,
                    y: shadow.y)
    }
}
