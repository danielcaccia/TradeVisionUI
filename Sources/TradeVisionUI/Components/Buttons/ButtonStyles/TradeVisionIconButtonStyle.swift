//
//  TradeVisionIconButtonStyle.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

struct TradeVisionIconButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    init() {}
    
    func makeBody(configuration: Configuration) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        configuration.label
            .frame(width: ImageType.largeIcon.size.width, height: ImageType.largeIcon.size.height)
            .tint(theme.icon)
            .background(Color.clear)
            .clipShape(RoundedRectangle(cornerRadius: TradeVisionCornerRadius.standard))
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
