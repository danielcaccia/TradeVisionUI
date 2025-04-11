//
//  TradeVisionCard.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct TradeVisionCard<Content: View>: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    public var content: () -> Content

    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        let shadow = TradeVisionShadow.regular(using: theme)
        
        TradeVisionVStack(alignment: .leading) {
            content()
        }
        .padding(TradeVisionSpacing.sm)
        .background(theme.cardBackground)
        .cornerRadius(TradeVisionCornerRadius.standard)
        .shadow(color: shadow.color, radius: shadow.radius, x: shadow.x, y: shadow.y)
    }
}
