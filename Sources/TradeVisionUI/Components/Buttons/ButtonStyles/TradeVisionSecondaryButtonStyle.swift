//
//  TradeVisionSecondaryButtonStyle.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 12/04/25.
//

import SwiftUI

struct TradeVisionSecondaryButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    init() {}
    
    func makeBody(configuration: Configuration) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        configuration.label
            .font(TradeVisionFont.subtitle)
            .padding(.vertical, TradeVisionSpacing.xs)
            .padding(.horizontal, TradeVisionSpacing.md)
            .foregroundColor(theme.iconItem)
            .background(theme.iconItem.opacity(configuration.isPressed ? 0.2 : 0.1))
            .clipShape(RoundedRectangle(cornerRadius: TradeVisionCornerRadius.standard))
            .cornerRadius(TradeVisionCornerRadius.standard)
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
