//
//  TradeVisionIconButtonStyle.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public struct TradeVisionIconButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        configuration.label
            .frame(width: ImageType.buttonIcon.size.width, height: ImageType.buttonIcon.size.height)
            .foregroundColor(theme.iconItem)
            .background(theme.iconItem.opacity(configuration.isPressed ? 0.2 : 0.1))
            .clipShape(RoundedRectangle(cornerRadius: TradeVisionCornerRadius.standard))
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
