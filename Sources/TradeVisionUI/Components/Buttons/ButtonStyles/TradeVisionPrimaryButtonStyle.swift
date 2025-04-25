//
//  TradeVisionPrimaryButtonStyle.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

struct TradeVisionPrimaryButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    init() {}
    
    func makeBody(configuration: Configuration) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        configuration.label
            .font(TradeVisionFont.button)
            .foregroundColor(theme.buttonText)
            .background(theme.accent)
            .cornerRadius(TradeVisionCornerRadius.small)
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
